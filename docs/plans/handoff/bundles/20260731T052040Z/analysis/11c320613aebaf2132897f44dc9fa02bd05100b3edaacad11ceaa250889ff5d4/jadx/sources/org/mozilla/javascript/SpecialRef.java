package org.mozilla.javascript;

import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
class SpecialRef extends Ref {
    private static final int SPECIAL_NONE = 0;
    private static final int SPECIAL_PARENT = 2;
    private static final int SPECIAL_PROTO = 1;
    private static final long serialVersionUID = -7521596632456797847L;
    private String name;
    private Scriptable target;
    private int type;

    private SpecialRef(Scriptable scriptable, int i, String str) {
        this.target = scriptable;
        this.type = i;
        this.name = str;
    }

    public static Ref createSpecial(Context context, Scriptable scriptable, Object obj, String str) {
        int i;
        Scriptable objectOrNull = ScriptRuntime.toObjectOrNull(context, obj, scriptable);
        if (objectOrNull == null) {
            throw ScriptRuntime.undefReadError(obj, str);
        }
        if (str.equals("__proto__")) {
            i = 1;
        } else {
            if (!str.equals("__parent__")) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(str);
                return null;
            }
            i = 2;
        }
        if (!context.hasFeature(5)) {
            i = 0;
        }
        return new SpecialRef(objectOrNull, i, str);
    }

    @Override // org.mozilla.javascript.Ref
    public boolean delete(Context context) {
        if (this.type == 0) {
            return ScriptRuntime.deleteObjectElem(this.target, this.name, context);
        }
        return false;
    }

    @Override // org.mozilla.javascript.Ref
    public Object get(Context context) {
        int i = this.type;
        if (i == 0) {
            return ScriptRuntime.getObjectProp(this.target, this.name, context);
        }
        if (i == 1) {
            return this.target.getPrototype();
        }
        if (i == 2) {
            return this.target.getParentScope();
        }
        throw Kit.codeBug();
    }

    @Override // org.mozilla.javascript.Ref
    public boolean has(Context context) {
        if (this.type == 0) {
            return ScriptRuntime.hasObjectElem(this.target, this.name, context);
        }
        return true;
    }

    @Override // org.mozilla.javascript.Ref
    public Object set(Context context, Scriptable scriptable, Object obj) {
        int i = this.type;
        if (i == 0) {
            return ScriptRuntime.setObjectProp(this.target, this.name, obj, context);
        }
        if (i != 1 && i != 2) {
            throw Kit.codeBug();
        }
        Scriptable objectOrNull = ScriptRuntime.toObjectOrNull(context, obj, scriptable);
        if (objectOrNull != null) {
            Scriptable scriptable2 = objectOrNull;
            while (scriptable2 != this.target) {
                scriptable2 = this.type == 1 ? scriptable2.getPrototype() : scriptable2.getParentScope();
                if (scriptable2 == null) {
                }
            }
            throw Context.reportRuntimeErrorById("msg.cyclic.value", this.name);
        }
        int i2 = this.type;
        Scriptable scriptable3 = this.target;
        if (i2 != 1) {
            scriptable3.setParentScope(objectOrNull);
            return objectOrNull;
        }
        if ((scriptable3 instanceof ScriptableObject) && !((ScriptableObject) scriptable3).isExtensible() && context.getLanguageVersion() >= 180) {
            throw ScriptRuntime.typeErrorById("msg.not.extensible", new Object[0]);
        }
        int languageVersion = context.getLanguageVersion();
        Scriptable scriptable4 = this.target;
        if (languageVersion < 200) {
            scriptable4.setPrototype(objectOrNull);
            return objectOrNull;
        }
        String typeof = ScriptRuntime.typeof(scriptable4);
        if ("function".equals(typeof)) {
            if (obj == null) {
                this.target.setPrototype(Undefined.SCRIPTABLE_UNDEFINED);
                return obj;
            }
            String typeof2 = ScriptRuntime.typeof(obj);
            if (!"object".equals(typeof2) && !"function".equals(typeof2)) {
                return obj;
            }
            this.target.setPrototype(objectOrNull);
            return obj;
        }
        String typeof3 = ScriptRuntime.typeof(obj);
        if (NativeSymbol.TYPE_NAME.equals(typeof)) {
            return obj;
        }
        if ((obj != null && !"object".equals(typeof3)) || !"object".equals(typeof)) {
            return Undefined.instance;
        }
        this.target.setPrototype(objectOrNull);
        return objectOrNull;
    }

    @Override // org.mozilla.javascript.Ref
    @Deprecated
    public Object set(Context context, Object obj) {
        throw new IllegalStateException();
    }
}
