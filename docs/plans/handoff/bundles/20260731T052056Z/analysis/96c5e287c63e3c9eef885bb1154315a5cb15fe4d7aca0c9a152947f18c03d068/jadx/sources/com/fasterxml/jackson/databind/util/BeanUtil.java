package com.fasterxml.jackson.databind.util;

import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.type.TypeBase;
import java.lang.reflect.Array;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Set;
import okhttp3.internal.http.StatusLine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BeanUtil implements Converter {
    public static StatusLine getArrayComparator(Object obj) {
        return new StatusLine(obj.getClass(), Array.getLength(obj), obj);
    }

    public static Object getDefaultValue(TypeBase typeBase) {
        Class cls = typeBase._class;
        Class primitiveType = ClassUtil.primitiveType(cls);
        if (primitiveType == null) {
            if (typeBase.isContainerType() || typeBase.isReferenceType()) {
                return JsonInclude.Include.NON_EMPTY;
            }
            if (cls == String.class) {
                return "";
            }
            if (typeBase.isTypeOrSubTypeOf(Date.class)) {
                return new Date(0L);
            }
            if (!typeBase.isTypeOrSubTypeOf(Calendar.class)) {
                return null;
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.setTimeInMillis(0L);
            return gregorianCalendar;
        }
        if (primitiveType == Integer.TYPE) {
            return 0;
        }
        if (primitiveType == Long.TYPE) {
            return 0L;
        }
        if (primitiveType == Boolean.TYPE) {
            return Boolean.FALSE;
        }
        if (primitiveType == Double.TYPE) {
            return Double.valueOf(0.0d);
        }
        if (primitiveType == Float.TYPE) {
            return Float.valueOf(RecyclerView.DECELERATION_RATE);
        }
        if (primitiveType == Byte.TYPE) {
            return (byte) 0;
        }
        if (primitiveType == Short.TYPE) {
            return (short) 0;
        }
        if (primitiveType == Character.TYPE) {
            return (char) 0;
        }
        TimeSource$Companion$$ExternalSyntheticLambda0.m$2(primitiveType.getName(), " is not a primitive type", "Class ");
        return null;
    }

    public static boolean shouldIgnore(Object obj, Set set, Set set2) {
        if (set == null && set2 == null) {
            return false;
        }
        return set2 == null ? set.contains(obj) : set == null ? !set2.contains(obj) : !set2.contains(obj) || set.contains(obj);
    }
}
