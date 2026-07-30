package defpackage;

import androidx.constraintlayout.widget.Cdo;
import defpackage.OE;
import j$.util.Objects;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* renamed from: wt, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3945wt implements Comparable<C3945wt> {

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f16424new;

    /* renamed from: do, reason: not valid java name */
    public float f16415do = 1.0f;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f16420for = 0;

    /* renamed from: if, reason: not valid java name */
    public float f16422if = 0.0f;

    /* renamed from: for, reason: not valid java name */
    public float f16419for = 0.0f;

    /* renamed from: new, reason: not valid java name */
    public float f16423new = 0.0f;

    /* renamed from: try, reason: not valid java name */
    public float f16426try = 0.0f;

    /* renamed from: case, reason: not valid java name */
    public float f16411case = 1.0f;

    /* renamed from: else, reason: not valid java name */
    public float f16417else = 1.0f;

    /* renamed from: goto, reason: not valid java name */
    public float f16421goto = Float.NaN;

    /* renamed from: this, reason: not valid java name */
    public float f16425this = Float.NaN;

    /* renamed from: break, reason: not valid java name */
    public float f16410break = 0.0f;

    /* renamed from: catch, reason: not valid java name */
    public float f16412catch = 0.0f;

    /* renamed from: class, reason: not valid java name */
    public float f16413class = 0.0f;

    /* renamed from: const, reason: not valid java name */
    public float f16414const = Float.NaN;

    /* renamed from: final, reason: not valid java name */
    public float f16418final = Float.NaN;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashMap<String, C4044ya> f16416do = new LinkedHashMap<>();

    /* renamed from: case, reason: not valid java name */
    public static boolean m8592case(float f, float f2) {
        return (Float.isNaN(f) || Float.isNaN(f2)) ? Float.isNaN(f) != Float.isNaN(f2) : Math.abs(f - f2) > 1.0E-6f;
    }

    @Override // java.lang.Comparable
    public final int compareTo(C3945wt c3945wt) {
        c3945wt.getClass();
        return Float.compare(0.0f, 0.0f);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: do, reason: not valid java name */
    public final void m8593do(HashMap<String, OE> hashMap, int i) {
        char c;
        for (String str : hashMap.keySet()) {
            OE oe = hashMap.get(str);
            str.getClass();
            switch (str.hashCode()) {
                case -1249320806:
                    if (str.equals("rotationX")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -1249320805:
                    if (str.equals("rotationY")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -1225497657:
                    if (str.equals("translationX")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -1001078227:
                    if (str.equals("progress")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -760884510:
                    if (str.equals("transformPivotX")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case -760884509:
                    if (str.equals("transformPivotY")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case -40300674:
                    if (str.equals("rotation")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case -4379043:
                    if (str.equals("elevation")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case 37232917:
                    if (str.equals("transitionPathRotate")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    oe.mo1650if(Float.isNaN(this.f16423new) ? 0.0f : this.f16423new, i);
                    break;
                case 1:
                    oe.mo1650if(Float.isNaN(this.f16426try) ? 0.0f : this.f16426try, i);
                    break;
                case 2:
                    oe.mo1650if(Float.isNaN(this.f16410break) ? 0.0f : this.f16410break, i);
                    break;
                case 3:
                    oe.mo1650if(Float.isNaN(this.f16412catch) ? 0.0f : this.f16412catch, i);
                    break;
                case 4:
                    oe.mo1650if(Float.isNaN(this.f16413class) ? 0.0f : this.f16413class, i);
                    break;
                case 5:
                    oe.mo1650if(Float.isNaN(this.f16418final) ? 0.0f : this.f16418final, i);
                    break;
                case 6:
                    oe.mo1650if(Float.isNaN(this.f16411case) ? 1.0f : this.f16411case, i);
                    break;
                case 7:
                    oe.mo1650if(Float.isNaN(this.f16417else) ? 1.0f : this.f16417else, i);
                    break;
                case '\b':
                    oe.mo1650if(Float.isNaN(this.f16421goto) ? 0.0f : this.f16421goto, i);
                    break;
                case '\t':
                    oe.mo1650if(Float.isNaN(this.f16425this) ? 0.0f : this.f16425this, i);
                    break;
                case '\n':
                    oe.mo1650if(Float.isNaN(this.f16419for) ? 0.0f : this.f16419for, i);
                    break;
                case 11:
                    oe.mo1650if(Float.isNaN(this.f16422if) ? 0.0f : this.f16422if, i);
                    break;
                case '\f':
                    oe.mo1650if(Float.isNaN(this.f16414const) ? 0.0f : this.f16414const, i);
                    break;
                case '\r':
                    oe.mo1650if(Float.isNaN(this.f16415do) ? 1.0f : this.f16415do, i);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        LinkedHashMap<String, C4044ya> linkedHashMap = this.f16416do;
                        if (linkedHashMap.containsKey(str2)) {
                            C4044ya c4044ya = linkedHashMap.get(str2);
                            if (oe instanceof OE.Cif) {
                                ((OE.Cif) oe).f2608do.append(i, c4044ya);
                                break;
                            } else {
                                c4044ya.m8755if();
                                Objects.toString(oe);
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        break;
                    }
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m8594goto(C0181Ea c0181Ea, Cdo cdo, int i) {
        c0181Ea.m484while();
        c0181Ea.m470import();
        Cdo.C0033do m3648else = cdo.m3648else(i);
        Cdo.Cnew cnew = m3648else.f6353do;
        int i2 = cnew.f6425if;
        this.f16420for = i2;
        int i3 = cnew.f6422do;
        this.f16424new = i3;
        this.f16415do = (i3 == 0 || i2 != 0) ? cnew.f6421do : 0.0f;
        Cdo.Ctry ctry = m3648else.f6354do;
        boolean z = ctry.f6436if;
        this.f16422if = ctry.f6429catch;
        this.f16419for = ctry.f6430do;
        this.f16423new = ctry.f6435if;
        this.f16426try = ctry.f6433for;
        this.f16411case = ctry.f6437new;
        this.f16417else = ctry.f6439try;
        this.f16421goto = ctry.f6428case;
        this.f16425this = ctry.f6432else;
        this.f16410break = ctry.f6434goto;
        this.f16412catch = ctry.f6438this;
        this.f16413class = ctry.f6427break;
        Cdo.Cfor cfor = m3648else.f6351do;
        C3754tf.m8290for(cfor.f6359do);
        this.f16414const = cfor.f6362if;
        this.f16418final = m3648else.f6353do.f6424if;
        for (String str : m3648else.f6355do.keySet()) {
            C4044ya c4044ya = m3648else.f6355do.get(str);
            if (c4044ya.f16796do != 5) {
                this.f16416do.put(str, c4044ya);
            }
        }
    }
}
