package com.fasterxml.jackson.databind;

import androidx.compose.animation.core.Animation;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.json.WriterBasedJsonGenerator;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Closeable;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class JsonMappingException extends JsonProcessingException {
    public LinkedList _path;
    public final transient Closeable _processor;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Reference implements Serializable {
        public String _desc;
        public final String _fieldName;
        public transient Object _from;
        public int _index = -1;

        public Reference(String str, Object obj) {
            this._from = obj;
            if (str != null) {
                this._fieldName = str;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Cannot pass null fieldName");
                throw null;
            }
        }

        public final String toString() {
            String str = this._desc;
            if (str != null) {
                return str;
            }
            StringBuilder sb = new StringBuilder();
            Object obj = this._from;
            if (obj != null) {
                Class<?> cls = obj instanceof Class ? (Class) obj : obj.getClass();
                int i = 0;
                while (cls.isArray()) {
                    cls = cls.getComponentType();
                    i++;
                }
                sb.append(cls.getName());
                while (true) {
                    i--;
                    if (i < 0) {
                        break;
                    }
                    sb.append("[]");
                }
            } else {
                sb.append("UNKNOWN");
            }
            sb.append('[');
            String str2 = this._fieldName;
            if (str2 != null) {
                sb.append('\"');
                sb.append(str2);
                sb.append('\"');
            } else {
                int i2 = this._index;
                if (i2 >= 0) {
                    sb.append(i2);
                } else {
                    sb.append('?');
                }
            }
            sb.append(']');
            String sb2 = sb.toString();
            this._desc = sb2;
            return sb2;
        }
    }

    public JsonMappingException(WriterBasedJsonGenerator writerBasedJsonGenerator, String str) {
        super(str);
        this._processor = writerBasedJsonGenerator;
    }

    public static JsonMappingException wrapWithPath(Throwable th, Reference reference) {
        Closeable closeable;
        JsonMappingException jsonMappingException;
        if (th instanceof JsonMappingException) {
            jsonMappingException = (JsonMappingException) th;
        } else {
            String exceptionMessage = ClassUtil.exceptionMessage(th);
            if (exceptionMessage == null || exceptionMessage.isEmpty()) {
                exceptionMessage = "(was " + th.getClass().getName() + ")";
            }
            if (th instanceof JsonProcessingException) {
                Object processor = ((JsonProcessingException) th).getProcessor();
                if (Animation.CC.m23m(processor)) {
                    closeable = (Closeable) processor;
                    jsonMappingException = new JsonMappingException(closeable, exceptionMessage, th);
                }
            }
            closeable = null;
            jsonMappingException = new JsonMappingException(closeable, exceptionMessage, th);
        }
        LinkedList linkedList = jsonMappingException._path;
        if (linkedList == null) {
            linkedList = new LinkedList();
            jsonMappingException._path = linkedList;
        }
        if (linkedList.size() < 1000) {
            jsonMappingException._path.addFirst(reference);
        }
        return jsonMappingException;
    }

    public final String _buildMessage() {
        String message = super.getMessage();
        if (this._path == null) {
            return message;
        }
        StringBuilder sb = new StringBuilder(message);
        sb.append(" (through reference chain: ");
        LinkedList linkedList = this._path;
        if (linkedList != null) {
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                sb.append(((Reference) it.next()).toString());
                if (it.hasNext()) {
                    sb.append("->");
                }
            }
        }
        sb.append(')');
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        return _buildMessage();
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException, java.lang.Throwable
    public final String getMessage() {
        return _buildMessage();
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException
    public final Object getProcessor() {
        return this._processor;
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException, java.lang.Throwable
    public final String toString() {
        return getClass().getName() + ": " + _buildMessage();
    }

    public JsonMappingException(Closeable closeable, String str, Throwable th) {
        super(str, th);
        this._processor = closeable;
    }
}
