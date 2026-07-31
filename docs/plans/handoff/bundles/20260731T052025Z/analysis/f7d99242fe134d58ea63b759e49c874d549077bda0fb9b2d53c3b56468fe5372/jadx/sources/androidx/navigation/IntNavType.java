package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IntNavType extends NavType {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ IntNavType(boolean z, int i) {
        super(z);
        this.$r8$classId = i;
    }

    @Override // androidx.navigation.NavType
    public final Object get(String str, Bundle bundle) {
        switch (this.$r8$classId) {
            case 0:
                bundle.getClass();
                str.getClass();
                return Integer.valueOf(Operation$State.m829getIntimpl(str, bundle));
            case 1:
                if (!ViewSizeResolver.CC.m(str, str, bundle) || Operation$State.m833isNullimpl(str, bundle)) {
                    return null;
                }
                boolean z = bundle.getBoolean(str, false);
                if (z || !bundle.getBoolean(str, true)) {
                    return Boolean.valueOf(z);
                }
                OperationKt.keyOrValueNotFoundError(str);
                throw null;
            case 2:
                bundle.getClass();
                str.getClass();
                float f = bundle.getFloat(str, Float.MIN_VALUE);
                if (f != Float.MIN_VALUE || bundle.getFloat(str, Float.MAX_VALUE) != Float.MAX_VALUE) {
                    return Float.valueOf(f);
                }
                OperationKt.keyOrValueNotFoundError(str);
                throw null;
            case 3:
                bundle.getClass();
                str.getClass();
                long j = bundle.getLong(str, Long.MIN_VALUE);
                if (j != Long.MIN_VALUE || bundle.getLong(str, Long.MAX_VALUE) != Long.MAX_VALUE) {
                    return Long.valueOf(j);
                }
                OperationKt.keyOrValueNotFoundError(str);
                throw null;
            case 4:
                bundle.getClass();
                str.getClass();
                return Integer.valueOf(Operation$State.m829getIntimpl(str, bundle));
            default:
                if (!ViewSizeResolver.CC.m(str, str, bundle) || Operation$State.m833isNullimpl(str, bundle)) {
                    return null;
                }
                return Operation$State.m831getStringimpl(str, bundle);
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
            case 4:
                return "reference";
            default:
                return "string";
        }
    }

    @Override // androidx.navigation.NavType
    /* renamed from: parseValue */
    public final Object mo804parseValue(String str) {
        int parseInt;
        long parseLong;
        int parseInt2;
        boolean z = true;
        switch (this.$r8$classId) {
            case 0:
                str.getClass();
                if (StringsKt__StringsJVMKt.startsWith(str, "0x", false)) {
                    String substring = str.substring(2);
                    CharsKt__CharKt.checkRadix(16);
                    parseInt = Integer.parseInt(substring, 16);
                } else {
                    parseInt = Integer.parseInt(str);
                }
                return Integer.valueOf(parseInt);
            case 1:
                str.getClass();
                if (!str.equals("true")) {
                    if (!str.equals("false")) {
                        UriKt$$ExternalSyntheticBUOutline0.m("A boolean NavType only accepts \"true\" or \"false\" values.");
                        return null;
                    }
                    z = false;
                }
                return Boolean.valueOf(z);
            case 2:
                str.getClass();
                return Float.valueOf(Float.parseFloat(str));
            case 3:
                str.getClass();
                String substring2 = StringsKt__StringsJVMKt.endsWith(str, "L", false) ? str.substring(0, str.length() - 1) : str;
                if (StringsKt__StringsJVMKt.startsWith(str, "0x", false)) {
                    String substring3 = substring2.substring(2);
                    CharsKt__CharKt.checkRadix(16);
                    parseLong = Long.parseLong(substring3, 16);
                } else {
                    parseLong = Long.parseLong(substring2);
                }
                return Long.valueOf(parseLong);
            case 4:
                str.getClass();
                if (StringsKt__StringsJVMKt.startsWith(str, "0x", false)) {
                    String substring4 = str.substring(2);
                    CharsKt__CharKt.checkRadix(16);
                    parseInt2 = Integer.parseInt(substring4, 16);
                } else {
                    parseInt2 = Integer.parseInt(str);
                }
                return Integer.valueOf(parseInt2);
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
            case 4:
                int intValue2 = ((Number) obj).intValue();
                str.getClass();
                bundle.putInt(str, intValue2);
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
            case 5:
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
