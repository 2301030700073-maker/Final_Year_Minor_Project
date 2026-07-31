package com.fasterxml.jackson.databind.ext;

import androidx.compose.animation.core.Animation;
import com.fasterxml.jackson.databind.ser.std.DateSerializer;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.io.Serializable;
import java.util.HashMap;
import org.w3c.dom.Node;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OptionalHandlerFactory implements Serializable {
    public static final Class CLASS_DOM_NODE = Node.class;
    public static final OptionalHandlerFactory instance;
    public final HashMap _sqlSerializers;

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    static {
        try {
            int i = Java7HandlersImpl.$r8$clinit;
        } catch (Throwable unused) {
        }
        instance = new OptionalHandlerFactory();
    }

    public OptionalHandlerFactory() {
        HashMap hashMap = new HashMap();
        hashMap.put("java.sql.Date", "com.fasterxml.jackson.databind.deser.std.DateDeserializers$SqlDateDeserializer");
        hashMap.put("java.sql.Timestamp", "com.fasterxml.jackson.databind.deser.std.DateDeserializers$TimestampDeserializer");
        HashMap hashMap2 = new HashMap();
        this._sqlSerializers = hashMap2;
        hashMap2.put("java.sql.Timestamp", DateSerializer.instance);
        hashMap2.put("java.sql.Date", "com.fasterxml.jackson.databind.ser.std.SqlDateSerializer");
        hashMap2.put("java.sql.Time", "com.fasterxml.jackson.databind.ser.std.SqlTimeSerializer");
        hashMap2.put("java.sql.Blob", "com.fasterxml.jackson.databind.ext.SqlBlobSerializer");
        hashMap2.put("javax.sql.rowset.serial.SerialBlob", "com.fasterxml.jackson.databind.ext.SqlBlobSerializer");
    }

    public static Object instantiate(TypeBase typeBase, Class cls) {
        try {
            return ClassUtil.createInstance(cls, false);
        } catch (Throwable th) {
            throw new IllegalStateException("Failed to create instance of `" + cls.getName() + "` for handling values of type " + ClassUtil.getTypeDescription(typeBase) + ", problem: (" + th.getClass().getName() + ") " + th.getMessage());
        }
    }

    public static Object instantiate(TypeBase typeBase, String str) {
        try {
            return instantiate(typeBase, Class.forName(str));
        } catch (Throwable th) {
            StringBuilder m21m = Animation.CC.m21m("Failed to find class `", str, "` for handling values of type ");
            m21m.append(ClassUtil.getTypeDescription(typeBase));
            m21m.append(", problem: (");
            m21m.append(th.getClass().getName());
            m21m.append(") ");
            Gson$$ExternalSyntheticBUOutline0.m(m21m, th.getMessage());
            return null;
        }
    }
}
