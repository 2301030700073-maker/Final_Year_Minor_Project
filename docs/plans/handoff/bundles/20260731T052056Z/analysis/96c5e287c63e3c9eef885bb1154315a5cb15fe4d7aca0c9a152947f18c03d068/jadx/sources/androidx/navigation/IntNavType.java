package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import androidx.compose.ui.unit.DpKt;
import androidx.work.Operation$State;
import coil3.util.UtilsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IntNavType extends NavType {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ IntNavType(int i, boolean z) {
        super(z);
        this.$r8$classId = i;
    }

    @Override // androidx.navigation.NavType
    public final Object get(Bundle bundle, String str) {
        switch (this.$r8$classId) {
            case 0:
                bundle.getClass();
                return Integer.valueOf(DpKt.m701getIntimpl(bundle, str));
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
                float f = bundle.getFloat(str, Float.MIN_VALUE);
                if (f != Float.MIN_VALUE || bundle.getFloat(str, Float.MAX_VALUE) != Float.MAX_VALUE) {
                    return Float.valueOf(f);
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            case 3:
                bundle.getClass();
                long j = bundle.getLong(str, Long.MIN_VALUE);
                if (j != Long.MIN_VALUE || bundle.getLong(str, Long.MAX_VALUE) != Long.MAX_VALUE) {
                    return Long.valueOf(j);
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            default:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
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
                return "integer";
            case 1:
                return "boolean";
            case 2:
                return "float";
            case 3:
                return "long";
            default:
                return "string";
        }
    }

    @Override // androidx.navigation.NavType
    /* renamed from: parseValue */
    public final Object mo755parseValue(String str) {
        int parseInt;
        long parseLong;
        boolean z = true;
        switch (this.$r8$classId) {
            case 0:
                if (StringsKt__StringsJVMKt.startsWith(str, "0x", false)) {
                    String substring = str.substring(2);
                    UtilsKt.checkRadix(16);
                    parseInt = Integer.parseInt(substring, 16);
                } else {
                    parseInt = Integer.parseInt(str);
                }
                return Integer.valueOf(parseInt);
            case 1:
                if (!str.equals("true")) {
                    if (!str.equals("false")) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("A boolean NavType only accepts \"true\" or \"false\" values.");
                        return null;
                    }
                    z = false;
                }
                return Boolean.valueOf(z);
            case 2:
                return Float.valueOf(Float.parseFloat(str));
            case 3:
                String substring2 = StringsKt__StringsJVMKt.endsWith(str, "L", false) ? str.substring(0, str.length() - 1) : str;
                if (StringsKt__StringsJVMKt.startsWith(str, "0x", false)) {
                    String substring3 = substring2.substring(2);
                    UtilsKt.checkRadix(16);
                    parseLong = Long.parseLong(substring3, 16);
                } else {
                    parseLong = Long.parseLong(substring2);
                }
                return Long.valueOf(parseLong);
            default:
                str.getClass();
                if (str.equals("null")) {
                    return null;
                }
                return str;
        }
    }

    @Override // androidx.navigation.NavType
    public final void put(Bundle bundle, String str, Object obj) {
        switch (this.$r8$classId) {
            case 0:
                int intValue = ((Number) obj).intValue();
                str.getClass();
                bundle.putInt(str, intValue);
                break;
            case 1:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                str.getClass();
                bundle.putBoolean(str, booleanValue);
                break;
            case 2:
                float floatValue = ((Number) obj).floatValue();
                str.getClass();
                bundle.putFloat(str, floatValue);
                break;
            case 3:
                long longValue = ((Number) obj).longValue();
                str.getClass();
                bundle.putLong(str, longValue);
                break;
            default:
                String str2 = (String) obj;
                str.getClass();
                if (str2 == null) {
                    bundle.putString(str, null);
                    break;
                } else {
                    bundle.putString(str, str2);
                    break;
                }
        }
    }

    @Override // androidx.navigation.NavType
    public String serializeAsValue(Object obj) {
        switch (this.$r8$classId) {
            case 4:
                String str = (String) obj;
                if (str == null) {
                    return "null";
                }
                String encode = Uri.encode(str, null);
                encode.getClass();
                return encode;
            default:
                return super.serializeAsValue(obj);
        }
    }
}
