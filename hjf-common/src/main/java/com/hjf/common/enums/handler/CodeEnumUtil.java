package com.hjf.common.enums.handler;

import com.hjf.common.enums.IHasValueEnum;

public class CodeEnumUtil {
	 /**
     * @param enumClass
     * @param code
     * @param <E>
     * @return
     */
    public static <E extends Enum<?> & IHasValueEnum> E codeOf(Class<E> enumClass, String code) {
        E[] enumConstants = enumClass.getEnumConstants();
        for (E e : enumConstants) {
            if (e.getValue().equals(code) )
                return e;
        }
        return null;
    }
}
