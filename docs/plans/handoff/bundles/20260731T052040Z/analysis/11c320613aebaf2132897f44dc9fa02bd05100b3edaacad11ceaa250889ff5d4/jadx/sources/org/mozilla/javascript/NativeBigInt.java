package org.mozilla.javascript;

import androidx.compose.ui.Modifier;
import java.math.BigInteger;
import java.util.Arrays;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
final class NativeBigInt extends IdScriptableObject {
    private static final Object BIG_INT_TAG = "BigInt";
    private static final int ConstructorId_asIntN = -1;
    private static final int ConstructorId_asUintN = -2;
    private static final int Id_constructor = 1;
    private static final int Id_toLocaleString = 3;
    private static final int Id_toSource = 4;
    private static final int Id_toString = 2;
    private static final int Id_valueOf = 5;
    private static final int MAX_PROTOTYPE_ID = 6;
    private static final int SymbolId_toStringTag = 6;
    private static final long serialVersionUID = 1335609231306775449L;
    private BigInteger bigIntValue;

    public NativeBigInt(BigInteger bigInteger) {
        this.bigIntValue = bigInteger;
    }

    private static Object execConstructorCall(int i, Object[] objArr) {
        if (i != -2 && i != -1) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(String.valueOf(i));
            return null;
        }
        int index = ScriptRuntime.toIndex(objArr.length < 1 ? Undefined.instance : objArr[0]);
        BigInteger bigInt = ScriptRuntime.toBigInt(objArr.length < 2 ? Undefined.instance : objArr[1]);
        if (index == 0) {
            return BigInteger.ZERO;
        }
        byte[] byteArray = bigInt.toByteArray();
        int i2 = (index / 8) + 1;
        if (i2 > byteArray.length) {
            return bigInt;
        }
        byte[] copyOfRange = Arrays.copyOfRange(byteArray, byteArray.length - i2, byteArray.length);
        int i3 = index % 8;
        if (i == -2) {
            copyOfRange[0] = (byte) (copyOfRange[0] & ((1 << i3) - 1));
        } else if (i == -1) {
            if (i3 == 0) {
                copyOfRange[0] = copyOfRange[1] >= 0 ? (byte) 0 : (byte) -1;
            } else {
                byte b = copyOfRange[0];
                if (((1 << (i3 - 1)) & b) != 0) {
                    copyOfRange[0] = (byte) (b | ((-1) << i3));
                } else {
                    copyOfRange[0] = (byte) (b & ((1 << i3) - 1));
                }
            }
        }
        return new BigInteger(copyOfRange);
    }

    public static void init(Scriptable scriptable, boolean z) {
        new NativeBigInt(BigInteger.ZERO).exportAsJSClass(6, scriptable, z);
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object obj;
        Object obj2 = BIG_INT_TAG;
        if (!idFunctionObject.hasTag(obj2)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        if (methodId == 1) {
            if (scriptable2 != null) {
                return objArr.length >= 1 ? ScriptRuntime.toBigInt(objArr[0]) : BigInteger.ZERO;
            }
            throw ScriptRuntime.typeErrorById("msg.not.ctor", obj2);
        }
        if (methodId < 1) {
            return execConstructorCall(methodId, objArr);
        }
        BigInteger bigInteger = ((NativeBigInt) IdScriptableObject.ensureType(scriptable2, NativeBigInt.class, idFunctionObject)).bigIntValue;
        if (methodId == 2 || methodId == 3) {
            return ScriptRuntime.bigIntToString(bigInteger, (objArr.length == 0 || (obj = objArr[0]) == Undefined.instance) ? 10 : ScriptRuntime.toInt32(obj));
        }
        if (methodId == 4) {
            return Modifier.CC.m("(new BigInt(", ScriptRuntime.toString(bigInteger), "))");
        }
        if (methodId == 5) {
            return bigInteger;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(String.valueOf(methodId));
        return null;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        Object obj = BIG_INT_TAG;
        addIdFunctionProperty(idFunctionObject, obj, -1, "asIntN", 2);
        addIdFunctionProperty(idFunctionObject, obj, -2, "asUintN", 2);
        super.fillConstructorProperties(idFunctionObject);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findPrototypeId(String str) {
        str.getClass();
        switch (str) {
            case "toLocaleString":
                return 3;
            case "toSource":
                return 4;
            case "toString":
                return 2;
            case "constructor":
                return 1;
            case "valueOf":
                return 5;
            default:
                return 0;
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "BigInt";
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void initPrototypeId(int i) {
        String str;
        if (i == 6) {
            initPrototypeValue(6, SymbolKey.TO_STRING_TAG, getClassName(), 3);
            return;
        }
        int i2 = 1;
        if (i != 1) {
            if (i == 2) {
                str = "toString";
            } else if (i == 3) {
                str = "toLocaleString";
            } else if (i == 4) {
                str = "toSource";
            } else {
                if (i != 5) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1(String.valueOf(i));
                    return;
                }
                str = "valueOf";
            }
            i2 = 0;
        } else {
            str = "constructor";
        }
        initPrototypeMethod(BIG_INT_TAG, i, str, i2);
    }

    public String toString() {
        return ScriptRuntime.bigIntToString(this.bigIntValue, 10);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findPrototypeId(Symbol symbol) {
        return SymbolKey.TO_STRING_TAG.equals(symbol) ? 6 : 0;
    }
}
