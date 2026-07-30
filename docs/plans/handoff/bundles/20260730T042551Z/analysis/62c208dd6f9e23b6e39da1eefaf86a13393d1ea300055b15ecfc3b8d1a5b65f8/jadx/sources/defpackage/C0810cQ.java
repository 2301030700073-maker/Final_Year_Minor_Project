package defpackage;

import android.os.Bundle;
import com.google.common.collect.Cdo;
import com.google.common.collect.Cif;
import com.google.common.collect.Ctry;

/* renamed from: cQ, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0810cQ {

    /* renamed from: do, reason: not valid java name */
    public static final Ctry<String> f8529do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3185jz f8530do;

    /* renamed from: for, reason: not valid java name */
    public static final C3185jz f8531for;

    /* renamed from: if, reason: not valid java name */
    public static final C3185jz f8532if;

    /* renamed from: new, reason: not valid java name */
    public static final C3185jz f8533new;

    /* renamed from: try, reason: not valid java name */
    public static final C3185jz f8534try;

    static {
        int i = Ctry.f11857for;
        Object[] objArr = new Object[15];
        objArr[0] = "_in";
        objArr[1] = "_xa";
        objArr[2] = "_xu";
        objArr[3] = "_aq";
        objArr[4] = "_aa";
        objArr[5] = "_ai";
        System.arraycopy(new String[]{"_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"}, 0, objArr, 6, 9);
        f8529do = Ctry.m6069final(15, objArr);
        Cif.C0075if c0075if = Cif.f11833do;
        Object[] objArr2 = {"_e", "_f", "_iap", "_s", "_au", "_ui", "_cd"};
        C0315Kc.m1154break(7, objArr2);
        f8530do = Cif.m6063catch(7, objArr2);
        Object[] objArr3 = {"auto", "app", "am"};
        C0315Kc.m1154break(3, objArr3);
        f8532if = Cif.m6063catch(3, objArr3);
        Object[] objArr4 = {"_r", "_dbg"};
        C0315Kc.m1154break(2, objArr4);
        f8531for = Cif.m6063catch(2, objArr4);
        Cif.Cdo cdo = new Cif.Cdo();
        cdo.m6050if(C3645ro.f15326if);
        cdo.m6050if(C3645ro.f15323for);
        ((Cdo.AbstractC0073do) cdo).f11815do = true;
        f8533new = Cif.m6063catch(((Cdo.AbstractC0073do) cdo).f11814do, ((Cdo.AbstractC0073do) cdo).f11816do);
        Object[] objArr5 = {"^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$"};
        C0315Kc.m1154break(2, objArr5);
        f8534try = Cif.m6063catch(2, objArr5);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m4903do(Bundle bundle, String str) {
        if (f8530do.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        C3185jz c3185jz = f8531for;
        int i = c3185jz.f13860for;
        int i2 = 0;
        while (i2 < i) {
            Object obj = c3185jz.get(i2);
            i2++;
            if (bundle.containsKey((String) obj)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m4904for(Bundle bundle, String str, String str2) {
        char c;
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!m4906new(str) || bundle == null) {
            return false;
        }
        C3185jz c3185jz = f8531for;
        int i = c3185jz.f13860for;
        int i2 = 0;
        while (i2 < i) {
            Object obj = c3185jz.get(i2);
            i2++;
            if (bundle.containsKey((String) obj)) {
                return false;
            }
        }
        int hashCode = str.hashCode();
        if (hashCode == 101200) {
            if (str.equals("fcm")) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode != 101230) {
            if (hashCode == 3142703 && str.equals("fiam")) {
                c = 2;
            }
            c = 65535;
        } else {
            if (str.equals("fdl")) {
                c = 1;
            }
            c = 65535;
        }
        if (c == 0) {
            bundle.putString("_cis", "fcm_integration");
            return true;
        }
        if (c == 1) {
            bundle.putString("_cis", "fdl_integration");
            return true;
        }
        if (c != 2) {
            return false;
        }
        bundle.putString("_cis", "fiam_integration");
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m4905if(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals("fcm") || str.equals("frc");
        }
        if ("_ln".equals(str2)) {
            return str.equals("fcm") || str.equals("fiam");
        }
        if (f8533new.contains(str2)) {
            return false;
        }
        C3185jz c3185jz = f8534try;
        int i = c3185jz.f13860for;
        int i2 = 0;
        while (i2 < i) {
            Object obj = c3185jz.get(i2);
            i2++;
            if (str2.matches((String) obj)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m4906new(String str) {
        return !f8532if.contains(str);
    }
}
