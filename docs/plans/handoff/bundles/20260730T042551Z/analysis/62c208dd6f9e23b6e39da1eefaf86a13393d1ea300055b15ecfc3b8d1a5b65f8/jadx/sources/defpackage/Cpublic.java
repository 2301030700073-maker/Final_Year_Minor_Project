package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.ads.zzdo;

/* renamed from: public, reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class Cpublic {
    /* renamed from: break, reason: not valid java name */
    public static /* synthetic */ String m7815break(int i) {
        if (i == 1) {
            return "Heart";
        }
        if (i == 2) {
            return "Thumb";
        }
        if (i == 3) {
            return "Star";
        }
        throw null;
    }

    /* renamed from: case, reason: not valid java name */
    public static String m7816case(String str, String str2) {
        return str + str2;
    }

    /* renamed from: catch, reason: not valid java name */
    public static /* synthetic */ String m7817catch(int i) {
        return i == 1 ? "UNKNOWN" : i == 2 ? "HORIZONTAL_DIMENSION" : i == 3 ? "VERTICAL_DIMENSION" : i == 4 ? "LEFT" : i == 5 ? "RIGHT" : i == 6 ? "TOP" : i == 7 ? "BOTTOM" : i == 8 ? "BASELINE" : "null";
    }

    /* renamed from: class, reason: not valid java name */
    public static /* synthetic */ String m7818class(int i) {
        return i == 1 ? "OK" : i == 2 ? "BAD_CONFIG" : "null";
    }

    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ String m7819const(int i) {
        return i == 1 ? "BEGIN_ARRAY" : i == 2 ? "END_ARRAY" : i == 3 ? "BEGIN_OBJECT" : i == 4 ? "END_OBJECT" : i == 5 ? "NAME" : i == 6 ? "STRING" : i == 7 ? "NUMBER" : i == 8 ? "BOOLEAN" : i == 9 ? "NULL" : i == 10 ? "END_DOCUMENT" : "null";
    }

    /* renamed from: do, reason: not valid java name */
    public static /* synthetic */ String m7820do(int i) {
        if (i == 1) {
            return "_fstec";
        }
        if (i == 2) {
            return "_fsntc";
        }
        if (i == 3) {
            return "_tsns";
        }
        if (i == 4) {
            return "_fr_tot";
        }
        if (i == 5) {
            return "_fr_slo";
        }
        if (i == 6) {
            return "_fr_fzn";
        }
        throw null;
    }

    /* renamed from: else, reason: not valid java name */
    public static StringBuilder m7821else(String str, int i, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }

    /* renamed from: final, reason: not valid java name */
    public static /* synthetic */ String m7822final(int i) {
        return i == 1 ? "ATTEMPT_MIGRATION" : i == 2 ? "NOT_GENERATED" : i == 3 ? "UNREGISTERED" : i == 4 ? "REGISTERED" : i == 5 ? "REGISTER_ERROR" : "null";
    }

    /* renamed from: for, reason: not valid java name */
    public static float m7823for(float f, float f2, float f3, float f4) {
        return ((f - f2) * f3) + f4;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m7824goto(String str, int i, String str2) {
        zzdo.zzf(str2, str + i);
    }

    /* renamed from: if, reason: not valid java name */
    public static /* synthetic */ long m7825if(int i) {
        if (i == 1) {
            return 0L;
        }
        if (i == 2) {
            return 1L;
        }
        if (i == 3) {
            return 2L;
        }
        if (i == 4) {
            return 3L;
        }
        if (i == 5) {
            return 4L;
        }
        throw null;
    }

    /* renamed from: new, reason: not valid java name */
    public static View m7826new(RecyclerView recyclerView, int i, RecyclerView recyclerView2, boolean z) {
        return LayoutInflater.from(recyclerView.getContext()).inflate(i, recyclerView2, z);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m7827this(String str, String str2, String str3) {
        zzdo.zzf(str3, str2.concat(String.valueOf(str)));
    }

    /* renamed from: try, reason: not valid java name */
    public static String m7828try(String str, long j) {
        return str + j;
    }
}
