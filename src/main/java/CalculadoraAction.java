import org.apache.struts.action.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalculadoraAction extends Action {

    /* CHAT DO GEMINI - Corrigindo Erro Módulo Intellj Struts */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response){

        /* Parametros do metodo execute

        * ActionMapping - Objeto que contém as informações que foram configuradas no struts-config.xml
        * ActionForm - È o pacote de dados que o ActionSrvlet preencheu para você.
        * HttpServletRequest - É o objeto padrão do Java para lidar com requisições web.
        * HttpServletResponse - É o objeto que controla a resposta que volta para o navegador.
        *  */

        DynaActionForm dynaForm = (DynaActionForm) form;

        Calculadora calculadora = (Calculadora) dynaForm.get("calculadora");

        if(calculadora.getOpcao().equals("1")){     /* Adição */
            calculadora.setResultado(String.valueOf(calculadora.getNum1() + calculadora.getNum2()));
        } else if (calculadora.getOpcao().equals("2")) {      /*Subtração */
            calculadora.setResultado(String.valueOf(calculadora.getNum1() - calculadora.getNum2()));
        } else if (calculadora.getOpcao().equals("3")) {      /*Multiplicação */
            calculadora.setResultado(String.valueOf(calculadora.getNum1() * calculadora.getNum2()));
        }else if (calculadora.getOpcao().equals("4")) {      /*Divisão */
            calculadora.setResultado(String.valueOf(calculadora.getNum1() / calculadora.getNum2()));
        }

        return mapping.findForward("success");
    }

}
