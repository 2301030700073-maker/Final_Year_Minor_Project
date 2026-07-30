package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.view.View;
import android.widget.EditText;
import com.google.android.gms.ads.internal.zzv;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import defpackage.InterfaceC0456Qm;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class V1 implements InterfaceC3314m9 {
    public static int[] _values() {
        return C4122zt.m8821const(11);
    }

    /* renamed from: break, reason: not valid java name */
    public static StringBuilder m2493break(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    /* renamed from: case, reason: not valid java name */
    public static String m2494case(String str, int i) {
        return str + i;
    }

    /* renamed from: catch, reason: not valid java name */
    public static Map m2495catch(HashMap hashMap) {
        return DesugarCollections.unmodifiableMap(new HashMap(hashMap));
    }

    /* renamed from: class, reason: not valid java name */
    public static void m2496class(Bundle bundle, String str) {
        bundle.putLong(str, zzv.zzC().currentTimeMillis());
    }

    /* renamed from: const, reason: not valid java name */
    public static void m2497const(final EditText... editTextArr) {
        if (editTextArr.length == 0) {
            return;
        }
        View.OnFocusChangeListener onFocusChangeListener = new View.OnFocusChangeListener() { // from class: Xc
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                for (EditText editText : editTextArr) {
                    if (editText.hasFocus()) {
                        return;
                    }
                }
                C3738tL.m8280case(view);
            }
        };
        for (EditText editText : editTextArr) {
            editText.setOnFocusChangeListener(onFocusChangeListener);
        }
        EditText editText2 = editTextArr[0];
        editText2.postDelayed(new RunnableC4072z1(editText2, 3), 100L);
    }

    /* renamed from: do, reason: not valid java name */
    public static /* synthetic */ int m2498do(int i) {
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        if (i == 4) {
            return 3;
        }
        if (i == 5) {
            return 7;
        }
        if (i == 6) {
            return 8;
        }
        if (i == 7) {
            return 9;
        }
        if (i == 8) {
            return 10;
        }
        if (i == 9) {
            return 11;
        }
        if (i == 10) {
            return 12;
        }
        if (i == 11) {
            return 13;
        }
        throw null;
    }

    /* renamed from: else, reason: not valid java name */
    public static String m2499else(String str, String str2, String str3, String str4, String str5) {
        return str + str2 + str3 + str4 + str5;
    }

    /* renamed from: final, reason: not valid java name */
    public static /* synthetic */ String m2500final(int i) {
        return i == 1 ? "NO_ERROR" : i == 2 ? "PROTOCOL_ERROR" : i == 3 ? "INTERNAL_ERROR" : i == 4 ? "FLOW_CONTROL_ERROR" : i == 5 ? "REFUSED_STREAM" : i == 6 ? "CANCEL" : i == 7 ? "COMPRESSION_ERROR" : i == 8 ? "CONNECT_ERROR" : i == 9 ? "ENHANCE_YOUR_CALM" : i == 10 ? "INADEQUATE_SECURITY" : i == 11 ? "HTTP_1_1_REQUIRED" : "null";
    }

    /* renamed from: for, reason: not valid java name */
    public static int m2501for(int i, int i2, int i3, int i4) {
        return i + i2 + i3 + i4;
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m2502goto(String str, StringBuilder sb) {
        return str + ((Object) sb);
    }

    /* renamed from: if, reason: not valid java name */
    public static /* synthetic */ String m2503if(int i) {
        if (i == 1) {
            return "BASE";
        }
        if (i == 2) {
            return "REALTIME";
        }
        throw null;
    }

    /* renamed from: new, reason: not valid java name */
    public static InterfaceC0456Qm m2504new(Parcel parcel) {
        InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
        parcel.recycle();
        return n;
    }

    /* renamed from: super, reason: not valid java name */
    public static /* synthetic */ String m2505super(int i) {
        return i == 1 ? "RUN_AS_NON_EXPEDITED_WORK_REQUEST" : i == 2 ? "DROP_WORK_REQUEST" : "null";
    }

    /* renamed from: this, reason: not valid java name */
    public static String m2506this(StringBuilder sb, int i, String str) {
        sb.append(i);
        sb.append(str);
        return sb.toString();
    }

    @Override // defpackage.InterfaceC3314m9
    /* renamed from: try */
    public Object mo1186try(Xz xz) {
        return ExecutorsRegistrar.f11871for.get();
    }
}
