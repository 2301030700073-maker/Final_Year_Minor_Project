package androidx.navigation.serialization;

import android.net.Uri;
import android.os.Bundle;
import androidx.compose.ui.unit.DpKt;
import androidx.navigation.NavType;
import androidx.work.Operation$State;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UNKNOWN extends NavType {
    public static final UNKNOWN INSTANCE = new UNKNOWN(0, false);
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ UNKNOWN(int i, boolean z) {
        super(z);
        this.$r8$classId = i;
    }

    @Override // androidx.navigation.NavType
    public final Object get(Bundle bundle, String str) {
        switch (this.$r8$classId) {
            case 0:
                bundle.getClass();
                return null;
            case 1:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
                }
                boolean z = bundle.getBoolean(str, false);
                if (z || !bundle.getBoolean(str, true)) {
                    return Boolean.valueOf(z);
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            case 2:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
                }
                double d = bundle.getDouble(str, Double.MIN_VALUE);
                if (d != Double.MIN_VALUE || bundle.getDouble(str, Double.MAX_VALUE) != Double.MAX_VALUE) {
                    return Double.valueOf(d);
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            case 3:
                bundle.getClass();
                double d2 = bundle.getDouble(str, Double.MIN_VALUE);
                if (d2 != Double.MIN_VALUE || bundle.getDouble(str, Double.MAX_VALUE) != Double.MAX_VALUE) {
                    return Double.valueOf(d2);
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            case 4:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
                }
                float f = bundle.getFloat(str, Float.MIN_VALUE);
                if (f != Float.MIN_VALUE || bundle.getFloat(str, Float.MAX_VALUE) != Float.MAX_VALUE) {
                    return Float.valueOf(f);
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            case 5:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
                }
                return Integer.valueOf(DpKt.m701getIntimpl(bundle, str));
            case 6:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
                }
                long j = bundle.getLong(str, Long.MIN_VALUE);
                if (j != Long.MIN_VALUE || bundle.getLong(str, Long.MAX_VALUE) != Long.MAX_VALUE) {
                    return Long.valueOf(j);
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            default:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return "null";
                }
                String string = bundle.getString(str);
                if (string != null) {
                    return string;
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
        }
    }

    @Override // androidx.navigation.NavType
    public final String getName() {
        switch (this.$r8$classId) {
            case 0:
                return "unknown";
            case 1:
                return "boolean_nullable";
            case 2:
                return "double_nullable";
            case 3:
                return "double";
            case 4:
                return "float_nullable";
            case 5:
                return "integer_nullable";
            case 6:
                return "long_nullable";
            default:
                return "string_non_nullable";
        }
    }

    @Override // androidx.navigation.NavType
    /* renamed from: parseValue */
    public final Object mo755parseValue(String str) {
        switch (this.$r8$classId) {
            case 0:
                return "null";
            case 1:
                if (str.equals("null")) {
                    return null;
                }
                return (Boolean) NavType.BoolType.mo755parseValue(str);
            case 2:
                if (str.equals("null")) {
                    return null;
                }
                return Double.valueOf(Double.parseDouble(str));
            case 3:
                return Double.valueOf(Double.parseDouble(str));
            case 4:
                if (str.equals("null")) {
                    return null;
                }
                return Float.valueOf(Float.parseFloat(str));
            case 5:
                if (str.equals("null")) {
                    return null;
                }
                return (Integer) NavType.IntType.mo755parseValue(str);
            case 6:
                if (str.equals("null")) {
                    return null;
                }
                return (Long) NavType.LongType.mo755parseValue(str);
            default:
                return str;
        }
    }

    @Override // androidx.navigation.NavType
    public final void put(Bundle bundle, String str, Object obj) {
        switch (this.$r8$classId) {
            case 0:
                str.getClass();
                ((String) obj).getClass();
                break;
            case 1:
                Boolean bool = (Boolean) obj;
                str.getClass();
                if (bool != null) {
                    NavType.BoolType.put(bundle, str, bool);
                    break;
                } else {
                    bundle.putString(str, null);
                    break;
                }
            case 2:
                Double d = (Double) obj;
                str.getClass();
                if (d != null) {
                    bundle.putDouble(str, d.doubleValue());
                    break;
                } else {
                    bundle.putString(str, null);
                    break;
                }
            case 3:
                double doubleValue = ((Number) obj).doubleValue();
                str.getClass();
                bundle.putDouble(str, doubleValue);
                break;
            case 4:
                Float f = (Float) obj;
                str.getClass();
                if (f != null) {
                    NavType.FloatType.put(bundle, str, f);
                    break;
                } else {
                    bundle.putString(str, null);
                    break;
                }
            case 5:
                Integer num = (Integer) obj;
                str.getClass();
                if (num != null) {
                    NavType.IntType.put(bundle, str, num);
                    break;
                } else {
                    bundle.putString(str, null);
                    break;
                }
            case 6:
                Long l = (Long) obj;
                str.getClass();
                if (l != null) {
                    NavType.LongType.put(bundle, str, l);
                    break;
                } else {
                    bundle.putString(str, null);
                    break;
                }
            default:
                String str2 = (String) obj;
                str.getClass();
                str2.getClass();
                bundle.putString(str, str2);
                break;
        }
    }

    @Override // androidx.navigation.NavType
    public String serializeAsValue(Object obj) {
        switch (this.$r8$classId) {
            case 7:
                String str = (String) obj;
                str.getClass();
                String encode = Uri.encode(str, null);
                encode.getClass();
                return encode;
            default:
                return super.serializeAsValue(obj);
        }
    }
}
