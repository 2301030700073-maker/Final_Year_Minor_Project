package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import com.facebook.appevents.codeless.internal.Constants;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.common.ConnectionResult;
import defpackage.C0701ad;
import defpackage.C3754tf;
import defpackage.C4044ya;
import defpackage.Hy;
import defpackage.N4;
import defpackage.O2;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: androidx.constraintlayout.widget.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    public static final SparseIntArray f6345do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f6346do = {0, 4, 8};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap<String, C4044ya> f6347do = new HashMap<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6348do = true;

    /* renamed from: if, reason: not valid java name */
    public final HashMap<Integer, C0033do> f6349if = new HashMap<>();

    /* renamed from: androidx.constraintlayout.widget.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0033do {

        /* renamed from: do, reason: not valid java name */
        public int f6350do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cnew f6353do = new Cnew();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cfor f6351do = new Cfor();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cif f6352do = new Cif();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Ctry f6354do = new Ctry();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public HashMap<String, C4044ya> f6355do = new HashMap<>();

        public final Object clone() {
            C0033do c0033do = new C0033do();
            c0033do.f6352do.m3659do(this.f6352do);
            c0033do.f6351do.m3657do(this.f6351do);
            Cnew cnew = c0033do.f6353do;
            cnew.getClass();
            Cnew cnew2 = this.f6353do;
            cnew.f6423do = cnew2.f6423do;
            cnew.f6422do = cnew2.f6422do;
            cnew.f6421do = cnew2.f6421do;
            cnew.f6424if = cnew2.f6424if;
            cnew.f6425if = cnew2.f6425if;
            c0033do.f6354do.m3662do(this.f6354do);
            c0033do.f6350do = this.f6350do;
            return c0033do;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m3654do(ConstraintLayout.LayoutParams layoutParams) {
            Cif cif = this.f6352do;
            layoutParams.f6281for = cif.f6417try;
            layoutParams.f6296new = cif.f6368case;
            layoutParams.f6314try = cif.f6380else;
            layoutParams.f6262case = cif.f6389goto;
            layoutParams.f6275else = cif.f6412this;
            layoutParams.f6284goto = cif.f6366break;
            layoutParams.f6309this = cif.f6369catch;
            layoutParams.f6260break = cif.f6370class;
            layoutParams.f6264catch = cif.f6371const;
            layoutParams.f6278final = cif.f6382final;
            layoutParams.f6305super = cif.f6409super;
            layoutParams.f6310throw = cif.f6413throw;
            layoutParams.f6317while = cif.f6420while;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = cif.f6410switch;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = cif.f6414throws;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = cif.f6373default;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = cif.f6381extends;
            layoutParams.f6303static = cif.f6397interface;
            layoutParams.f6306switch = cif.f6419volatile;
            layoutParams.f6294native = cif.f6365abstract;
            layoutParams.f6302return = cif.f6408strictfp;
            layoutParams.f6280for = cif.f6390if;
            layoutParams.f6295new = cif.f6384for;
            layoutParams.f6265class = cif.f6395import;
            layoutParams.f6266const = cif.f6398native;
            layoutParams.f6286if = cif.f6399new;
            layoutParams.f6272do = cif.f6376do;
            layoutParams.f6316volatile = cif.f6405public;
            layoutParams.f6293interface = cif.f6406return;
            layoutParams.f6261case = cif.f6416try;
            layoutParams.f6313try = cif.f6367case;
            layoutParams.f6277extends = cif.f6415transient;
            layoutParams.f6268default = cif.f6404protected;
            layoutParams.f6273do = cif.f6387for;
            layoutParams.f6289if = cif.f6401new;
            layoutParams.f6279finally = cif.f6394implements;
            layoutParams.f6298package = cif.f6396instanceof;
            layoutParams.f6267continue = cif.f6411synchronized;
            layoutParams.f6304strictfp = cif.a;
            layoutParams.f6299private = cif.b;
            layoutParams.f6258abstract = cif.c;
            layoutParams.f6274else = cif.f6379else;
            layoutParams.f6283goto = cif.f6388goto;
            layoutParams.f6300protected = cif.f6407static;
            layoutParams.f6269do = cif.f6374do;
            layoutParams.f6270do = cif.f6385for;
            layoutParams.f6287if = cif.f6400new;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = cif.f6375do;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = cif.f6391if;
            String str = cif.f6386for;
            if (str != null) {
                layoutParams.f6288if = str;
            }
            layoutParams.setMarginStart(cif.f6402package);
            layoutParams.setMarginEnd(cif.f6383finally);
            layoutParams.m3641do();
        }

        /* renamed from: for, reason: not valid java name */
        public final void m3655for(int i, Constraints.LayoutParams layoutParams) {
            m3656if(i, layoutParams);
            this.f6353do.f6421do = layoutParams.f6327catch;
            float f = layoutParams.f6329const;
            Ctry ctry = this.f6354do;
            ctry.f6430do = f;
            ctry.f6435if = layoutParams.f6330final;
            ctry.f6433for = layoutParams.f6336super;
            ctry.f6437new = layoutParams.f6338throw;
            ctry.f6439try = layoutParams.f6339while;
            ctry.f6428case = layoutParams.f6331import;
            ctry.f6432else = layoutParams.f6332native;
            ctry.f6434goto = layoutParams.f6333public;
            ctry.f6438this = layoutParams.f6334return;
            ctry.f6427break = layoutParams.f6335static;
            ctry.f6429catch = layoutParams.f6328class;
            ctry.f6436if = layoutParams.f6337this;
        }

        /* renamed from: if, reason: not valid java name */
        public final void m3656if(int i, ConstraintLayout.LayoutParams layoutParams) {
            this.f6350do = i;
            int i2 = layoutParams.f6281for;
            Cif cif = this.f6352do;
            cif.f6417try = i2;
            cif.f6368case = layoutParams.f6296new;
            cif.f6380else = layoutParams.f6314try;
            cif.f6389goto = layoutParams.f6262case;
            cif.f6412this = layoutParams.f6275else;
            cif.f6366break = layoutParams.f6284goto;
            cif.f6369catch = layoutParams.f6309this;
            cif.f6370class = layoutParams.f6260break;
            cif.f6371const = layoutParams.f6264catch;
            cif.f6382final = layoutParams.f6278final;
            cif.f6409super = layoutParams.f6305super;
            cif.f6413throw = layoutParams.f6310throw;
            cif.f6420while = layoutParams.f6317while;
            cif.f6390if = layoutParams.f6280for;
            cif.f6384for = layoutParams.f6295new;
            cif.f6376do = layoutParams.f6272do;
            cif.f6395import = layoutParams.f6265class;
            cif.f6398native = layoutParams.f6266const;
            cif.f6399new = layoutParams.f6286if;
            cif.f6405public = layoutParams.f6316volatile;
            cif.f6406return = layoutParams.f6293interface;
            cif.f6407static = layoutParams.f6300protected;
            cif.f6374do = layoutParams.f6269do;
            cif.f6385for = layoutParams.f6270do;
            cif.f6400new = layoutParams.f6287if;
            cif.f6375do = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            cif.f6391if = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            cif.f6410switch = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            cif.f6414throws = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            cif.f6373default = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            cif.f6381extends = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            cif.f6416try = layoutParams.f6261case;
            cif.f6367case = layoutParams.f6313try;
            cif.f6415transient = layoutParams.f6277extends;
            cif.f6404protected = layoutParams.f6268default;
            cif.f6387for = layoutParams.f6273do;
            cif.f6401new = layoutParams.f6289if;
            cif.f6394implements = layoutParams.f6279finally;
            cif.f6396instanceof = layoutParams.f6298package;
            cif.f6411synchronized = layoutParams.f6267continue;
            cif.a = layoutParams.f6304strictfp;
            cif.b = layoutParams.f6299private;
            cif.c = layoutParams.f6258abstract;
            cif.f6379else = layoutParams.f6274else;
            cif.f6388goto = layoutParams.f6283goto;
            cif.f6386for = layoutParams.f6288if;
            cif.f6365abstract = layoutParams.f6294native;
            cif.f6408strictfp = layoutParams.f6302return;
            cif.f6403private = layoutParams.f6291import;
            cif.f6372continue = layoutParams.f6301public;
            cif.f6397interface = layoutParams.f6303static;
            cif.f6419volatile = layoutParams.f6306switch;
            cif.f6383finally = layoutParams.getMarginEnd();
            cif.f6402package = layoutParams.getMarginStart();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.do$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public static final SparseIntArray f6356do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f6360do = false;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f6358do = -1;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f6359do = null;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public int f6363if = -1;

        /* renamed from: for, reason: not valid java name */
        public int f6361for = 0;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public float f6357do = Float.NaN;

        /* renamed from: if, reason: not valid java name */
        public float f6362if = Float.NaN;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f6356do = sparseIntArray;
            sparseIntArray.append(2, 1);
            sparseIntArray.append(4, 2);
            sparseIntArray.append(5, 3);
            sparseIntArray.append(1, 4);
            sparseIntArray.append(0, 5);
            sparseIntArray.append(3, 6);
        }

        /* renamed from: do, reason: not valid java name */
        public final void m3657do(Cfor cfor) {
            this.f6360do = cfor.f6360do;
            this.f6358do = cfor.f6358do;
            this.f6359do = cfor.f6359do;
            this.f6363if = cfor.f6363if;
            this.f6361for = cfor.f6361for;
            this.f6362if = cfor.f6362if;
            this.f6357do = cfor.f6357do;
        }

        /* renamed from: if, reason: not valid java name */
        public final void m3658if(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.J);
            this.f6360do = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f6356do.get(index)) {
                    case 1:
                        this.f6362if = obtainStyledAttributes.getFloat(index, this.f6362if);
                        break;
                    case 2:
                        this.f6363if = obtainStyledAttributes.getInt(index, this.f6363if);
                        break;
                    case 3:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            this.f6359do = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.f6359do = C3754tf.f15732do[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.f6361for = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f6358do = Cdo.m3644break(obtainStyledAttributes, index, this.f6358do);
                        break;
                    case 6:
                        this.f6357do = obtainStyledAttributes.getFloat(index, this.f6357do);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.do$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final SparseIntArray f6364do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f6375do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int[] f6378do;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public String f6386for;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public int f6391if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public String f6392if;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f6377do = false;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f6393if = false;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public int f6385for = -1;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public int f6400new = -1;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public float f6374do = -1.0f;

        /* renamed from: try, reason: not valid java name and collision with other field name */
        public int f6417try = -1;

        /* renamed from: case, reason: not valid java name and collision with other field name */
        public int f6368case = -1;

        /* renamed from: else, reason: not valid java name and collision with other field name */
        public int f6380else = -1;

        /* renamed from: goto, reason: not valid java name and collision with other field name */
        public int f6389goto = -1;

        /* renamed from: this, reason: not valid java name */
        public int f6412this = -1;

        /* renamed from: break, reason: not valid java name */
        public int f6366break = -1;

        /* renamed from: catch, reason: not valid java name */
        public int f6369catch = -1;

        /* renamed from: class, reason: not valid java name */
        public int f6370class = -1;

        /* renamed from: const, reason: not valid java name */
        public int f6371const = -1;

        /* renamed from: final, reason: not valid java name */
        public int f6382final = -1;

        /* renamed from: super, reason: not valid java name */
        public int f6409super = -1;

        /* renamed from: throw, reason: not valid java name */
        public int f6413throw = -1;

        /* renamed from: while, reason: not valid java name */
        public int f6420while = -1;

        /* renamed from: if, reason: not valid java name */
        public float f6390if = 0.5f;

        /* renamed from: for, reason: not valid java name */
        public float f6384for = 0.5f;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f6376do = null;

        /* renamed from: import, reason: not valid java name */
        public int f6395import = -1;

        /* renamed from: native, reason: not valid java name */
        public int f6398native = 0;

        /* renamed from: new, reason: not valid java name */
        public float f6399new = 0.0f;

        /* renamed from: public, reason: not valid java name */
        public int f6405public = -1;

        /* renamed from: return, reason: not valid java name */
        public int f6406return = -1;

        /* renamed from: static, reason: not valid java name */
        public int f6407static = -1;

        /* renamed from: switch, reason: not valid java name */
        public int f6410switch = -1;

        /* renamed from: throws, reason: not valid java name */
        public int f6414throws = -1;

        /* renamed from: default, reason: not valid java name */
        public int f6373default = -1;

        /* renamed from: extends, reason: not valid java name */
        public int f6381extends = -1;

        /* renamed from: finally, reason: not valid java name */
        public int f6383finally = -1;

        /* renamed from: package, reason: not valid java name */
        public int f6402package = -1;

        /* renamed from: private, reason: not valid java name */
        public int f6403private = -1;

        /* renamed from: abstract, reason: not valid java name */
        public int f6365abstract = -1;

        /* renamed from: continue, reason: not valid java name */
        public int f6372continue = -1;

        /* renamed from: strictfp, reason: not valid java name */
        public int f6408strictfp = -1;

        /* renamed from: volatile, reason: not valid java name */
        public int f6419volatile = -1;

        /* renamed from: interface, reason: not valid java name */
        public int f6397interface = -1;

        /* renamed from: try, reason: not valid java name */
        public float f6416try = -1.0f;

        /* renamed from: case, reason: not valid java name */
        public float f6367case = -1.0f;

        /* renamed from: protected, reason: not valid java name */
        public int f6404protected = 0;

        /* renamed from: transient, reason: not valid java name */
        public int f6415transient = 0;

        /* renamed from: implements, reason: not valid java name */
        public int f6394implements = 0;

        /* renamed from: instanceof, reason: not valid java name */
        public int f6396instanceof = 0;

        /* renamed from: synchronized, reason: not valid java name */
        public int f6411synchronized = -1;
        public int a = -1;
        public int b = -1;
        public int c = -1;

        /* renamed from: else, reason: not valid java name */
        public float f6379else = 1.0f;

        /* renamed from: goto, reason: not valid java name */
        public float f6388goto = 1.0f;
        public int d = -1;
        public int e = 0;
        public int f = -1;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public boolean f6387for = false;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public boolean f6401new = false;

        /* renamed from: try, reason: not valid java name and collision with other field name */
        public boolean f6418try = true;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f6364do = sparseIntArray;
            sparseIntArray.append(38, 24);
            sparseIntArray.append(39, 25);
            sparseIntArray.append(41, 28);
            sparseIntArray.append(42, 29);
            sparseIntArray.append(47, 35);
            sparseIntArray.append(46, 34);
            sparseIntArray.append(20, 4);
            sparseIntArray.append(19, 3);
            sparseIntArray.append(17, 1);
            sparseIntArray.append(55, 6);
            sparseIntArray.append(56, 7);
            sparseIntArray.append(27, 17);
            sparseIntArray.append(28, 18);
            sparseIntArray.append(29, 19);
            sparseIntArray.append(0, 26);
            sparseIntArray.append(43, 31);
            sparseIntArray.append(44, 32);
            sparseIntArray.append(26, 10);
            sparseIntArray.append(25, 9);
            sparseIntArray.append(59, 13);
            sparseIntArray.append(62, 16);
            sparseIntArray.append(60, 14);
            sparseIntArray.append(57, 11);
            sparseIntArray.append(61, 15);
            sparseIntArray.append(58, 12);
            sparseIntArray.append(50, 38);
            sparseIntArray.append(36, 37);
            sparseIntArray.append(35, 39);
            sparseIntArray.append(49, 40);
            sparseIntArray.append(34, 20);
            sparseIntArray.append(48, 36);
            sparseIntArray.append(24, 5);
            sparseIntArray.append(37, 76);
            sparseIntArray.append(45, 76);
            sparseIntArray.append(40, 76);
            sparseIntArray.append(18, 76);
            sparseIntArray.append(16, 76);
            sparseIntArray.append(3, 23);
            sparseIntArray.append(5, 27);
            sparseIntArray.append(7, 30);
            sparseIntArray.append(8, 8);
            sparseIntArray.append(4, 33);
            sparseIntArray.append(6, 2);
            sparseIntArray.append(1, 22);
            sparseIntArray.append(2, 21);
            sparseIntArray.append(21, 61);
            sparseIntArray.append(23, 62);
            sparseIntArray.append(22, 63);
            sparseIntArray.append(54, 69);
            sparseIntArray.append(33, 70);
            sparseIntArray.append(12, 71);
            sparseIntArray.append(10, 72);
            sparseIntArray.append(11, 73);
            sparseIntArray.append(13, 74);
            sparseIntArray.append(9, 75);
        }

        /* renamed from: do, reason: not valid java name */
        public final void m3659do(Cif cif) {
            this.f6377do = cif.f6377do;
            this.f6375do = cif.f6375do;
            this.f6393if = cif.f6393if;
            this.f6391if = cif.f6391if;
            this.f6385for = cif.f6385for;
            this.f6400new = cif.f6400new;
            this.f6374do = cif.f6374do;
            this.f6417try = cif.f6417try;
            this.f6368case = cif.f6368case;
            this.f6380else = cif.f6380else;
            this.f6389goto = cif.f6389goto;
            this.f6412this = cif.f6412this;
            this.f6366break = cif.f6366break;
            this.f6369catch = cif.f6369catch;
            this.f6370class = cif.f6370class;
            this.f6371const = cif.f6371const;
            this.f6382final = cif.f6382final;
            this.f6409super = cif.f6409super;
            this.f6413throw = cif.f6413throw;
            this.f6420while = cif.f6420while;
            this.f6390if = cif.f6390if;
            this.f6384for = cif.f6384for;
            this.f6376do = cif.f6376do;
            this.f6395import = cif.f6395import;
            this.f6398native = cif.f6398native;
            this.f6399new = cif.f6399new;
            this.f6405public = cif.f6405public;
            this.f6406return = cif.f6406return;
            this.f6407static = cif.f6407static;
            this.f6410switch = cif.f6410switch;
            this.f6414throws = cif.f6414throws;
            this.f6373default = cif.f6373default;
            this.f6381extends = cif.f6381extends;
            this.f6383finally = cif.f6383finally;
            this.f6402package = cif.f6402package;
            this.f6403private = cif.f6403private;
            this.f6365abstract = cif.f6365abstract;
            this.f6372continue = cif.f6372continue;
            this.f6408strictfp = cif.f6408strictfp;
            this.f6419volatile = cif.f6419volatile;
            this.f6397interface = cif.f6397interface;
            this.f6416try = cif.f6416try;
            this.f6367case = cif.f6367case;
            this.f6404protected = cif.f6404protected;
            this.f6415transient = cif.f6415transient;
            this.f6394implements = cif.f6394implements;
            this.f6396instanceof = cif.f6396instanceof;
            this.f6411synchronized = cif.f6411synchronized;
            this.a = cif.a;
            this.b = cif.b;
            this.c = cif.c;
            this.f6379else = cif.f6379else;
            this.f6388goto = cif.f6388goto;
            this.d = cif.d;
            this.e = cif.e;
            this.f = cif.f;
            this.f6386for = cif.f6386for;
            int[] iArr = cif.f6378do;
            if (iArr != null) {
                this.f6378do = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.f6378do = null;
            }
            this.f6392if = cif.f6392if;
            this.f6387for = cif.f6387for;
            this.f6401new = cif.f6401new;
            this.f6418try = cif.f6418try;
        }

        /* renamed from: if, reason: not valid java name */
        public final void m3660if(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.H);
            this.f6393if = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                SparseIntArray sparseIntArray = f6364do;
                int i2 = sparseIntArray.get(index);
                if (i2 == 80) {
                    this.f6387for = obtainStyledAttributes.getBoolean(index, this.f6387for);
                } else if (i2 != 81) {
                    switch (i2) {
                        case 1:
                            this.f6371const = Cdo.m3644break(obtainStyledAttributes, index, this.f6371const);
                            break;
                        case 2:
                            this.f6381extends = obtainStyledAttributes.getDimensionPixelSize(index, this.f6381extends);
                            break;
                        case 3:
                            this.f6370class = Cdo.m3644break(obtainStyledAttributes, index, this.f6370class);
                            break;
                        case 4:
                            this.f6369catch = Cdo.m3644break(obtainStyledAttributes, index, this.f6369catch);
                            break;
                        case 5:
                            this.f6376do = obtainStyledAttributes.getString(index);
                            break;
                        case 6:
                            this.f6405public = obtainStyledAttributes.getDimensionPixelOffset(index, this.f6405public);
                            break;
                        case 7:
                            this.f6406return = obtainStyledAttributes.getDimensionPixelOffset(index, this.f6406return);
                            break;
                        case 8:
                            this.f6383finally = obtainStyledAttributes.getDimensionPixelSize(index, this.f6383finally);
                            break;
                        case 9:
                            this.f6420while = Cdo.m3644break(obtainStyledAttributes, index, this.f6420while);
                            break;
                        case 10:
                            this.f6413throw = Cdo.m3644break(obtainStyledAttributes, index, this.f6413throw);
                            break;
                        case 11:
                            this.f6408strictfp = obtainStyledAttributes.getDimensionPixelSize(index, this.f6408strictfp);
                            break;
                        case 12:
                            this.f6419volatile = obtainStyledAttributes.getDimensionPixelSize(index, this.f6419volatile);
                            break;
                        case 13:
                            this.f6403private = obtainStyledAttributes.getDimensionPixelSize(index, this.f6403private);
                            break;
                        case 14:
                            this.f6372continue = obtainStyledAttributes.getDimensionPixelSize(index, this.f6372continue);
                            break;
                        case 15:
                            this.f6397interface = obtainStyledAttributes.getDimensionPixelSize(index, this.f6397interface);
                            break;
                        case 16:
                            this.f6365abstract = obtainStyledAttributes.getDimensionPixelSize(index, this.f6365abstract);
                            break;
                        case 17:
                            this.f6385for = obtainStyledAttributes.getDimensionPixelOffset(index, this.f6385for);
                            break;
                        case 18:
                            this.f6400new = obtainStyledAttributes.getDimensionPixelOffset(index, this.f6400new);
                            break;
                        case 19:
                            this.f6374do = obtainStyledAttributes.getFloat(index, this.f6374do);
                            break;
                        case 20:
                            this.f6390if = obtainStyledAttributes.getFloat(index, this.f6390if);
                            break;
                        case 21:
                            this.f6391if = obtainStyledAttributes.getLayoutDimension(index, this.f6391if);
                            break;
                        case 22:
                            this.f6375do = obtainStyledAttributes.getLayoutDimension(index, this.f6375do);
                            break;
                        case ConnectionResult.API_DISABLED /* 23 */:
                            this.f6410switch = obtainStyledAttributes.getDimensionPixelSize(index, this.f6410switch);
                            break;
                        case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                            this.f6417try = Cdo.m3644break(obtainStyledAttributes, index, this.f6417try);
                            break;
                        case Constants.MAX_TREE_DEPTH /* 25 */:
                            this.f6368case = Cdo.m3644break(obtainStyledAttributes, index, this.f6368case);
                            break;
                        case 26:
                            this.f6407static = obtainStyledAttributes.getInt(index, this.f6407static);
                            break;
                        case 27:
                            this.f6414throws = obtainStyledAttributes.getDimensionPixelSize(index, this.f6414throws);
                            break;
                        case 28:
                            this.f6380else = Cdo.m3644break(obtainStyledAttributes, index, this.f6380else);
                            break;
                        case 29:
                            this.f6389goto = Cdo.m3644break(obtainStyledAttributes, index, this.f6389goto);
                            break;
                        case 30:
                            this.f6402package = obtainStyledAttributes.getDimensionPixelSize(index, this.f6402package);
                            break;
                        case 31:
                            this.f6382final = Cdo.m3644break(obtainStyledAttributes, index, this.f6382final);
                            break;
                        case 32:
                            this.f6409super = Cdo.m3644break(obtainStyledAttributes, index, this.f6409super);
                            break;
                        case 33:
                            this.f6373default = obtainStyledAttributes.getDimensionPixelSize(index, this.f6373default);
                            break;
                        case 34:
                            this.f6366break = Cdo.m3644break(obtainStyledAttributes, index, this.f6366break);
                            break;
                        case 35:
                            this.f6412this = Cdo.m3644break(obtainStyledAttributes, index, this.f6412this);
                            break;
                        case 36:
                            this.f6384for = obtainStyledAttributes.getFloat(index, this.f6384for);
                            break;
                        case 37:
                            this.f6367case = obtainStyledAttributes.getFloat(index, this.f6367case);
                            break;
                        case 38:
                            this.f6416try = obtainStyledAttributes.getFloat(index, this.f6416try);
                            break;
                        case 39:
                            this.f6404protected = obtainStyledAttributes.getInt(index, this.f6404protected);
                            break;
                        case 40:
                            this.f6415transient = obtainStyledAttributes.getInt(index, this.f6415transient);
                            break;
                        default:
                            switch (i2) {
                                case 54:
                                    this.f6394implements = obtainStyledAttributes.getInt(index, this.f6394implements);
                                    break;
                                case 55:
                                    this.f6396instanceof = obtainStyledAttributes.getInt(index, this.f6396instanceof);
                                    break;
                                case 56:
                                    this.f6411synchronized = obtainStyledAttributes.getDimensionPixelSize(index, this.f6411synchronized);
                                    break;
                                case 57:
                                    this.a = obtainStyledAttributes.getDimensionPixelSize(index, this.a);
                                    break;
                                case 58:
                                    this.b = obtainStyledAttributes.getDimensionPixelSize(index, this.b);
                                    break;
                                case 59:
                                    this.c = obtainStyledAttributes.getDimensionPixelSize(index, this.c);
                                    break;
                                default:
                                    switch (i2) {
                                        case 61:
                                            this.f6395import = Cdo.m3644break(obtainStyledAttributes, index, this.f6395import);
                                            break;
                                        case 62:
                                            this.f6398native = obtainStyledAttributes.getDimensionPixelSize(index, this.f6398native);
                                            break;
                                        case 63:
                                            this.f6399new = obtainStyledAttributes.getFloat(index, this.f6399new);
                                            break;
                                        default:
                                            switch (i2) {
                                                case 69:
                                                    this.f6379else = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 70:
                                                    this.f6388goto = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 71:
                                                    break;
                                                case 72:
                                                    this.d = obtainStyledAttributes.getInt(index, this.d);
                                                    break;
                                                case 73:
                                                    this.e = obtainStyledAttributes.getDimensionPixelSize(index, this.e);
                                                    break;
                                                case 74:
                                                    this.f6392if = obtainStyledAttributes.getString(index);
                                                    break;
                                                case 75:
                                                    this.f6418try = obtainStyledAttributes.getBoolean(index, this.f6418try);
                                                    break;
                                                case 76:
                                                    Integer.toHexString(index);
                                                    sparseIntArray.get(index);
                                                    break;
                                                case 77:
                                                    this.f6386for = obtainStyledAttributes.getString(index);
                                                    break;
                                                default:
                                                    Integer.toHexString(index);
                                                    sparseIntArray.get(index);
                                                    break;
                                            }
                                    }
                            }
                    }
                } else {
                    this.f6401new = obtainStyledAttributes.getBoolean(index, this.f6401new);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.do$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f6423do = false;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f6422do = 0;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public int f6425if = 0;

        /* renamed from: do, reason: not valid java name */
        public float f6421do = 1.0f;

        /* renamed from: if, reason: not valid java name */
        public float f6424if = Float.NaN;

        /* renamed from: do, reason: not valid java name */
        public final void m3661do(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.Q);
            this.f6423do = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 1) {
                    this.f6421do = obtainStyledAttributes.getFloat(index, this.f6421do);
                } else if (index == 0) {
                    int i2 = obtainStyledAttributes.getInt(index, this.f6422do);
                    this.f6422do = i2;
                    this.f6422do = Cdo.f6346do[i2];
                } else if (index == 4) {
                    this.f6425if = obtainStyledAttributes.getInt(index, this.f6425if);
                } else if (index == 3) {
                    this.f6424if = obtainStyledAttributes.getFloat(index, this.f6424if);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.do$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        public static final SparseIntArray f6426do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f6431do = false;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public float f6430do = 0.0f;

        /* renamed from: if, reason: not valid java name */
        public float f6435if = 0.0f;

        /* renamed from: for, reason: not valid java name */
        public float f6433for = 0.0f;

        /* renamed from: new, reason: not valid java name */
        public float f6437new = 1.0f;

        /* renamed from: try, reason: not valid java name */
        public float f6439try = 1.0f;

        /* renamed from: case, reason: not valid java name */
        public float f6428case = Float.NaN;

        /* renamed from: else, reason: not valid java name */
        public float f6432else = Float.NaN;

        /* renamed from: goto, reason: not valid java name */
        public float f6434goto = 0.0f;

        /* renamed from: this, reason: not valid java name */
        public float f6438this = 0.0f;

        /* renamed from: break, reason: not valid java name */
        public float f6427break = 0.0f;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f6436if = false;

        /* renamed from: catch, reason: not valid java name */
        public float f6429catch = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f6426do = sparseIntArray;
            sparseIntArray.append(6, 1);
            sparseIntArray.append(7, 2);
            sparseIntArray.append(8, 3);
            sparseIntArray.append(4, 4);
            sparseIntArray.append(5, 5);
            sparseIntArray.append(0, 6);
            sparseIntArray.append(1, 7);
            sparseIntArray.append(2, 8);
            sparseIntArray.append(3, 9);
            sparseIntArray.append(9, 10);
            sparseIntArray.append(10, 11);
        }

        /* renamed from: do, reason: not valid java name */
        public final void m3662do(Ctry ctry) {
            this.f6431do = ctry.f6431do;
            this.f6430do = ctry.f6430do;
            this.f6435if = ctry.f6435if;
            this.f6433for = ctry.f6433for;
            this.f6437new = ctry.f6437new;
            this.f6439try = ctry.f6439try;
            this.f6428case = ctry.f6428case;
            this.f6432else = ctry.f6432else;
            this.f6434goto = ctry.f6434goto;
            this.f6438this = ctry.f6438this;
            this.f6427break = ctry.f6427break;
            this.f6436if = ctry.f6436if;
            this.f6429catch = ctry.f6429catch;
        }

        /* renamed from: if, reason: not valid java name */
        public final void m3663if(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.T);
            this.f6431do = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f6426do.get(index)) {
                    case 1:
                        this.f6430do = obtainStyledAttributes.getFloat(index, this.f6430do);
                        break;
                    case 2:
                        this.f6435if = obtainStyledAttributes.getFloat(index, this.f6435if);
                        break;
                    case 3:
                        this.f6433for = obtainStyledAttributes.getFloat(index, this.f6433for);
                        break;
                    case 4:
                        this.f6437new = obtainStyledAttributes.getFloat(index, this.f6437new);
                        break;
                    case 5:
                        this.f6439try = obtainStyledAttributes.getFloat(index, this.f6439try);
                        break;
                    case 6:
                        this.f6428case = obtainStyledAttributes.getDimension(index, this.f6428case);
                        break;
                    case 7:
                        this.f6432else = obtainStyledAttributes.getDimension(index, this.f6432else);
                        break;
                    case 8:
                        this.f6434goto = obtainStyledAttributes.getDimension(index, this.f6434goto);
                        break;
                    case 9:
                        this.f6438this = obtainStyledAttributes.getDimension(index, this.f6438this);
                        break;
                    case 10:
                        this.f6427break = obtainStyledAttributes.getDimension(index, this.f6427break);
                        break;
                    case 11:
                        this.f6436if = true;
                        this.f6429catch = obtainStyledAttributes.getDimension(index, this.f6429catch);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f6345do = sparseIntArray;
        sparseIntArray.append(76, 25);
        sparseIntArray.append(77, 26);
        sparseIntArray.append(79, 29);
        sparseIntArray.append(80, 30);
        sparseIntArray.append(86, 36);
        sparseIntArray.append(85, 35);
        sparseIntArray.append(58, 4);
        sparseIntArray.append(57, 3);
        sparseIntArray.append(55, 1);
        sparseIntArray.append(94, 6);
        sparseIntArray.append(95, 7);
        sparseIntArray.append(65, 17);
        sparseIntArray.append(66, 18);
        sparseIntArray.append(67, 19);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(81, 32);
        sparseIntArray.append(82, 33);
        sparseIntArray.append(64, 10);
        sparseIntArray.append(63, 9);
        sparseIntArray.append(98, 13);
        sparseIntArray.append(FacebookMediationAdapter.ERROR_INVALID_SERVER_PARAMETERS, 16);
        sparseIntArray.append(99, 14);
        sparseIntArray.append(96, 11);
        sparseIntArray.append(100, 15);
        sparseIntArray.append(97, 12);
        sparseIntArray.append(89, 40);
        sparseIntArray.append(74, 39);
        sparseIntArray.append(73, 41);
        sparseIntArray.append(88, 42);
        sparseIntArray.append(72, 20);
        sparseIntArray.append(87, 37);
        sparseIntArray.append(62, 5);
        sparseIntArray.append(75, 82);
        sparseIntArray.append(84, 82);
        sparseIntArray.append(78, 82);
        sparseIntArray.append(56, 82);
        sparseIntArray.append(54, 82);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(90, 54);
        sparseIntArray.append(68, 55);
        sparseIntArray.append(91, 56);
        sparseIntArray.append(69, 57);
        sparseIntArray.append(92, 58);
        sparseIntArray.append(70, 59);
        sparseIntArray.append(59, 61);
        sparseIntArray.append(61, 62);
        sparseIntArray.append(60, 63);
        sparseIntArray.append(27, 64);
        sparseIntArray.append(FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE, 65);
        sparseIntArray.append(33, 66);
        sparseIntArray.append(FacebookMediationAdapter.ERROR_NULL_CONTEXT, 67);
        sparseIntArray.append(FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(102, 68);
        sparseIntArray.append(93, 69);
        sparseIntArray.append(71, 70);
        sparseIntArray.append(31, 71);
        sparseIntArray.append(29, 72);
        sparseIntArray.append(30, 73);
        sparseIntArray.append(32, 74);
        sparseIntArray.append(28, 75);
        sparseIntArray.append(FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION, 76);
        sparseIntArray.append(83, 77);
        sparseIntArray.append(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, 78);
        sparseIntArray.append(53, 80);
        sparseIntArray.append(52, 81);
    }

    /* renamed from: break, reason: not valid java name */
    public static int m3644break(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        return resourceId == -1 ? typedArray.getInt(i, -1) : resourceId;
    }

    /* renamed from: case, reason: not valid java name */
    public static C0033do m3645case(Context context, AttributeSet attributeSet) {
        C0033do c0033do = new C0033do();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.w);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            Cnew cnew = c0033do.f6353do;
            Cfor cfor = c0033do.f6351do;
            Ctry ctry = c0033do.f6354do;
            Cif cif = c0033do.f6352do;
            if (index != 1 && 23 != index && 24 != index) {
                cfor.f6360do = true;
                cif.f6393if = true;
                cnew.f6423do = true;
                ctry.f6431do = true;
            }
            SparseIntArray sparseIntArray = f6345do;
            switch (sparseIntArray.get(index)) {
                case 1:
                    cif.f6371const = m3644break(obtainStyledAttributes, index, cif.f6371const);
                    break;
                case 2:
                    cif.f6381extends = obtainStyledAttributes.getDimensionPixelSize(index, cif.f6381extends);
                    break;
                case 3:
                    cif.f6370class = m3644break(obtainStyledAttributes, index, cif.f6370class);
                    break;
                case 4:
                    cif.f6369catch = m3644break(obtainStyledAttributes, index, cif.f6369catch);
                    break;
                case 5:
                    cif.f6376do = obtainStyledAttributes.getString(index);
                    break;
                case 6:
                    cif.f6405public = obtainStyledAttributes.getDimensionPixelOffset(index, cif.f6405public);
                    break;
                case 7:
                    cif.f6406return = obtainStyledAttributes.getDimensionPixelOffset(index, cif.f6406return);
                    break;
                case 8:
                    cif.f6383finally = obtainStyledAttributes.getDimensionPixelSize(index, cif.f6383finally);
                    break;
                case 9:
                    cif.f6420while = m3644break(obtainStyledAttributes, index, cif.f6420while);
                    break;
                case 10:
                    cif.f6413throw = m3644break(obtainStyledAttributes, index, cif.f6413throw);
                    break;
                case 11:
                    cif.f6408strictfp = obtainStyledAttributes.getDimensionPixelSize(index, cif.f6408strictfp);
                    break;
                case 12:
                    cif.f6419volatile = obtainStyledAttributes.getDimensionPixelSize(index, cif.f6419volatile);
                    break;
                case 13:
                    cif.f6403private = obtainStyledAttributes.getDimensionPixelSize(index, cif.f6403private);
                    break;
                case 14:
                    cif.f6372continue = obtainStyledAttributes.getDimensionPixelSize(index, cif.f6372continue);
                    break;
                case 15:
                    cif.f6397interface = obtainStyledAttributes.getDimensionPixelSize(index, cif.f6397interface);
                    break;
                case 16:
                    cif.f6365abstract = obtainStyledAttributes.getDimensionPixelSize(index, cif.f6365abstract);
                    break;
                case 17:
                    cif.f6385for = obtainStyledAttributes.getDimensionPixelOffset(index, cif.f6385for);
                    break;
                case 18:
                    cif.f6400new = obtainStyledAttributes.getDimensionPixelOffset(index, cif.f6400new);
                    break;
                case 19:
                    cif.f6374do = obtainStyledAttributes.getFloat(index, cif.f6374do);
                    break;
                case 20:
                    cif.f6390if = obtainStyledAttributes.getFloat(index, cif.f6390if);
                    break;
                case 21:
                    cif.f6391if = obtainStyledAttributes.getLayoutDimension(index, cif.f6391if);
                    break;
                case 22:
                    cnew.f6422do = f6346do[obtainStyledAttributes.getInt(index, cnew.f6422do)];
                    break;
                case ConnectionResult.API_DISABLED /* 23 */:
                    cif.f6375do = obtainStyledAttributes.getLayoutDimension(index, cif.f6375do);
                    break;
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    cif.f6410switch = obtainStyledAttributes.getDimensionPixelSize(index, cif.f6410switch);
                    break;
                case Constants.MAX_TREE_DEPTH /* 25 */:
                    cif.f6417try = m3644break(obtainStyledAttributes, index, cif.f6417try);
                    break;
                case 26:
                    cif.f6368case = m3644break(obtainStyledAttributes, index, cif.f6368case);
                    break;
                case 27:
                    cif.f6407static = obtainStyledAttributes.getInt(index, cif.f6407static);
                    break;
                case 28:
                    cif.f6414throws = obtainStyledAttributes.getDimensionPixelSize(index, cif.f6414throws);
                    break;
                case 29:
                    cif.f6380else = m3644break(obtainStyledAttributes, index, cif.f6380else);
                    break;
                case 30:
                    cif.f6389goto = m3644break(obtainStyledAttributes, index, cif.f6389goto);
                    break;
                case 31:
                    cif.f6402package = obtainStyledAttributes.getDimensionPixelSize(index, cif.f6402package);
                    break;
                case 32:
                    cif.f6382final = m3644break(obtainStyledAttributes, index, cif.f6382final);
                    break;
                case 33:
                    cif.f6409super = m3644break(obtainStyledAttributes, index, cif.f6409super);
                    break;
                case 34:
                    cif.f6373default = obtainStyledAttributes.getDimensionPixelSize(index, cif.f6373default);
                    break;
                case 35:
                    cif.f6366break = m3644break(obtainStyledAttributes, index, cif.f6366break);
                    break;
                case 36:
                    cif.f6412this = m3644break(obtainStyledAttributes, index, cif.f6412this);
                    break;
                case 37:
                    cif.f6384for = obtainStyledAttributes.getFloat(index, cif.f6384for);
                    break;
                case 38:
                    c0033do.f6350do = obtainStyledAttributes.getResourceId(index, c0033do.f6350do);
                    break;
                case 39:
                    cif.f6367case = obtainStyledAttributes.getFloat(index, cif.f6367case);
                    break;
                case 40:
                    cif.f6416try = obtainStyledAttributes.getFloat(index, cif.f6416try);
                    break;
                case 41:
                    cif.f6404protected = obtainStyledAttributes.getInt(index, cif.f6404protected);
                    break;
                case 42:
                    cif.f6415transient = obtainStyledAttributes.getInt(index, cif.f6415transient);
                    break;
                case 43:
                    cnew.f6421do = obtainStyledAttributes.getFloat(index, cnew.f6421do);
                    break;
                case 44:
                    ctry.f6436if = true;
                    ctry.f6429catch = obtainStyledAttributes.getDimension(index, ctry.f6429catch);
                    break;
                case 45:
                    ctry.f6435if = obtainStyledAttributes.getFloat(index, ctry.f6435if);
                    break;
                case 46:
                    ctry.f6433for = obtainStyledAttributes.getFloat(index, ctry.f6433for);
                    break;
                case 47:
                    ctry.f6437new = obtainStyledAttributes.getFloat(index, ctry.f6437new);
                    break;
                case 48:
                    ctry.f6439try = obtainStyledAttributes.getFloat(index, ctry.f6439try);
                    break;
                case 49:
                    ctry.f6428case = obtainStyledAttributes.getDimension(index, ctry.f6428case);
                    break;
                case 50:
                    ctry.f6432else = obtainStyledAttributes.getDimension(index, ctry.f6432else);
                    break;
                case 51:
                    ctry.f6434goto = obtainStyledAttributes.getDimension(index, ctry.f6434goto);
                    break;
                case 52:
                    ctry.f6438this = obtainStyledAttributes.getDimension(index, ctry.f6438this);
                    break;
                case 53:
                    ctry.f6427break = obtainStyledAttributes.getDimension(index, ctry.f6427break);
                    break;
                case 54:
                    cif.f6394implements = obtainStyledAttributes.getInt(index, cif.f6394implements);
                    break;
                case 55:
                    cif.f6396instanceof = obtainStyledAttributes.getInt(index, cif.f6396instanceof);
                    break;
                case 56:
                    cif.f6411synchronized = obtainStyledAttributes.getDimensionPixelSize(index, cif.f6411synchronized);
                    break;
                case 57:
                    cif.a = obtainStyledAttributes.getDimensionPixelSize(index, cif.a);
                    break;
                case 58:
                    cif.b = obtainStyledAttributes.getDimensionPixelSize(index, cif.b);
                    break;
                case 59:
                    cif.c = obtainStyledAttributes.getDimensionPixelSize(index, cif.c);
                    break;
                case 60:
                    ctry.f6430do = obtainStyledAttributes.getFloat(index, ctry.f6430do);
                    break;
                case 61:
                    cif.f6395import = m3644break(obtainStyledAttributes, index, cif.f6395import);
                    break;
                case 62:
                    cif.f6398native = obtainStyledAttributes.getDimensionPixelSize(index, cif.f6398native);
                    break;
                case 63:
                    cif.f6399new = obtainStyledAttributes.getFloat(index, cif.f6399new);
                    break;
                case 64:
                    cfor.f6358do = m3644break(obtainStyledAttributes, index, cfor.f6358do);
                    break;
                case 65:
                    if (obtainStyledAttributes.peekValue(index).type == 3) {
                        cfor.f6359do = obtainStyledAttributes.getString(index);
                        break;
                    } else {
                        cfor.f6359do = C3754tf.f15732do[obtainStyledAttributes.getInteger(index, 0)];
                        break;
                    }
                case 66:
                    cfor.f6361for = obtainStyledAttributes.getInt(index, 0);
                    break;
                case 67:
                    cfor.f6362if = obtainStyledAttributes.getFloat(index, cfor.f6362if);
                    break;
                case 68:
                    cnew.f6424if = obtainStyledAttributes.getFloat(index, cnew.f6424if);
                    break;
                case 69:
                    cif.f6379else = obtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 70:
                    cif.f6388goto = obtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 71:
                    break;
                case 72:
                    cif.d = obtainStyledAttributes.getInt(index, cif.d);
                    break;
                case 73:
                    cif.e = obtainStyledAttributes.getDimensionPixelSize(index, cif.e);
                    break;
                case 74:
                    cif.f6392if = obtainStyledAttributes.getString(index);
                    break;
                case 75:
                    cif.f6418try = obtainStyledAttributes.getBoolean(index, cif.f6418try);
                    break;
                case 76:
                    cfor.f6363if = obtainStyledAttributes.getInt(index, cfor.f6363if);
                    break;
                case 77:
                    cif.f6386for = obtainStyledAttributes.getString(index);
                    break;
                case 78:
                    cnew.f6425if = obtainStyledAttributes.getInt(index, cnew.f6425if);
                    break;
                case 79:
                    cfor.f6357do = obtainStyledAttributes.getFloat(index, cfor.f6357do);
                    break;
                case 80:
                    cif.f6387for = obtainStyledAttributes.getBoolean(index, cif.f6387for);
                    break;
                case 81:
                    cif.f6401new = obtainStyledAttributes.getBoolean(index, cif.f6401new);
                    break;
                case 82:
                    Integer.toHexString(index);
                    sparseIntArray.get(index);
                    break;
                default:
                    Integer.toHexString(index);
                    sparseIntArray.get(index);
                    break;
            }
        }
        obtainStyledAttributes.recycle();
        return c0033do;
    }

    /* renamed from: try, reason: not valid java name */
    public static int[] m3646try(Barrier barrier, String str) {
        int i;
        HashMap<String, Integer> hashMap;
        String[] split = str.split(",");
        Context context = barrier.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            Integer num = null;
            try {
                i = Hy.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            if (i == 0 && barrier.isInEditMode() && (barrier.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) barrier.getParent();
                constraintLayout.getClass();
                if ((trim instanceof String) && (hashMap = constraintLayout.f6250do) != null && hashMap.containsKey(trim)) {
                    num = constraintLayout.f6250do.get(trim);
                }
                if (num != null && (num instanceof Integer)) {
                    i = num.intValue();
                }
            }
            iArr[i3] = i;
            i2++;
            i3++;
        }
        return i3 != split.length ? Arrays.copyOf(iArr, i3) : iArr;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3647do(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            HashMap<Integer, C0033do> hashMap = this.f6349if;
            if (!hashMap.containsKey(Integer.valueOf(id))) {
                C0701ad.m3138for(childAt);
            } else {
                if (this.f6348do && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (hashMap.containsKey(Integer.valueOf(id))) {
                    C4044ya.m8749case(childAt, hashMap.get(Integer.valueOf(id)).f6355do);
                }
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final C0033do m3648else(int i) {
        HashMap<Integer, C0033do> hashMap = this.f6349if;
        if (!hashMap.containsKey(Integer.valueOf(i))) {
            hashMap.put(Integer.valueOf(i), new C0033do());
        }
        return hashMap.get(Integer.valueOf(i));
    }

    /* renamed from: for, reason: not valid java name */
    public final void m3649for(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashMap<Integer, C0033do> hashMap = this.f6349if;
        HashSet hashSet = new HashSet(hashMap.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!hashMap.containsKey(Integer.valueOf(id))) {
                C0701ad.m3138for(childAt);
            } else {
                if (this.f6348do && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1 && hashMap.containsKey(Integer.valueOf(id))) {
                    hashSet.remove(Integer.valueOf(id));
                    C0033do c0033do = hashMap.get(Integer.valueOf(id));
                    if (childAt instanceof Barrier) {
                        c0033do.f6352do.f = 1;
                    }
                    int i2 = c0033do.f6352do.f;
                    if (i2 != -1 && i2 == 1) {
                        Barrier barrier = (Barrier) childAt;
                        barrier.setId(id);
                        Cif cif = c0033do.f6352do;
                        barrier.f6233new = cif.d;
                        int i3 = cif.e;
                        N4 n4 = barrier.f6232do;
                        n4.f2301switch = i3;
                        n4.f2299new = cif.f6418try;
                        int[] iArr = cif.f6378do;
                        if (iArr != null) {
                            barrier.m3628final(iArr);
                        } else {
                            String str = cif.f6392if;
                            if (str != null) {
                                int[] m3646try = m3646try(barrier, str);
                                cif.f6378do = m3646try;
                                barrier.m3628final(m3646try);
                            }
                        }
                    }
                    ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                    layoutParams.m3641do();
                    c0033do.m3654do(layoutParams);
                    C4044ya.m8749case(childAt, c0033do.f6355do);
                    childAt.setLayoutParams(layoutParams);
                    Cnew cnew = c0033do.f6353do;
                    if (cnew.f6425if == 0) {
                        childAt.setVisibility(cnew.f6422do);
                    }
                    childAt.setAlpha(cnew.f6421do);
                    Ctry ctry = c0033do.f6354do;
                    childAt.setRotation(ctry.f6430do);
                    childAt.setRotationX(ctry.f6435if);
                    childAt.setRotationY(ctry.f6433for);
                    childAt.setScaleX(ctry.f6437new);
                    childAt.setScaleY(ctry.f6439try);
                    if (!Float.isNaN(ctry.f6428case)) {
                        childAt.setPivotX(ctry.f6428case);
                    }
                    if (!Float.isNaN(ctry.f6432else)) {
                        childAt.setPivotY(ctry.f6432else);
                    }
                    childAt.setTranslationX(ctry.f6434goto);
                    childAt.setTranslationY(ctry.f6438this);
                    childAt.setTranslationZ(ctry.f6427break);
                    if (ctry.f6436if) {
                        childAt.setElevation(ctry.f6429catch);
                    }
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            C0033do c0033do2 = hashMap.get(num);
            Cif cif2 = c0033do2.f6352do;
            int i4 = cif2.f;
            if (i4 != -1 && i4 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                int[] iArr2 = cif2.f6378do;
                if (iArr2 != null) {
                    barrier2.m3628final(iArr2);
                } else {
                    String str2 = cif2.f6392if;
                    if (str2 != null) {
                        int[] m3646try2 = m3646try(barrier2, str2);
                        cif2.f6378do = m3646try2;
                        barrier2.m3628final(m3646try2);
                    }
                }
                barrier2.f6233new = cif2.d;
                barrier2.f6232do.f2301switch = cif2.e;
                int i5 = ConstraintLayout.f6242this;
                ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams();
                barrier2.m3632while();
                c0033do2.m3654do(layoutParams2);
                constraintLayout.addView(barrier2, layoutParams2);
            }
            if (cif2.f6377do) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                int i6 = ConstraintLayout.f6242this;
                ConstraintLayout.LayoutParams layoutParams3 = new ConstraintLayout.LayoutParams();
                c0033do2.m3654do(layoutParams3);
                constraintLayout.addView(guideline, layoutParams3);
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m3650goto(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    C0033do m3645case = m3645case(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        m3645case.f6352do.f6377do = true;
                    }
                    this.f6349if.put(Integer.valueOf(m3645case.f6350do), m3645case);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m3651if(ConstraintLayout constraintLayout) {
        m3649for(constraintLayout);
        constraintLayout.f6248do = null;
        constraintLayout.requestLayout();
    }

    /* renamed from: new, reason: not valid java name */
    public final void m3652new(ConstraintLayout constraintLayout) {
        int i;
        Cdo cdo = this;
        int childCount = constraintLayout.getChildCount();
        HashMap<Integer, C0033do> hashMap = cdo.f6349if;
        hashMap.clear();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = constraintLayout.getChildAt(i2);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (cdo.f6348do && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!hashMap.containsKey(Integer.valueOf(id))) {
                hashMap.put(Integer.valueOf(id), new C0033do());
            }
            C0033do c0033do = hashMap.get(Integer.valueOf(id));
            HashMap<String, C4044ya> hashMap2 = cdo.f6347do;
            HashMap<String, C4044ya> hashMap3 = new HashMap<>();
            Class<?> cls = childAt.getClass();
            for (String str : hashMap2.keySet()) {
                C4044ya c4044ya = hashMap2.get(str);
                try {
                } catch (IllegalAccessException e) {
                    e = e;
                    i = childCount;
                } catch (NoSuchMethodException e2) {
                    e = e2;
                    i = childCount;
                } catch (InvocationTargetException e3) {
                    e = e3;
                    i = childCount;
                }
                if (str.equals("BackgroundColor")) {
                    hashMap3.put(str, new C4044ya(c4044ya, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                } else {
                    i = childCount;
                    try {
                        hashMap3.put(str, new C4044ya(c4044ya, cls.getMethod("getMap" + str, new Class[0]).invoke(childAt, new Object[0])));
                    } catch (IllegalAccessException e4) {
                        e = e4;
                        e.printStackTrace();
                        childCount = i;
                    } catch (NoSuchMethodException e5) {
                        e = e5;
                        e.printStackTrace();
                        childCount = i;
                    } catch (InvocationTargetException e6) {
                        e = e6;
                        e.printStackTrace();
                        childCount = i;
                    }
                    childCount = i;
                }
            }
            int i3 = childCount;
            c0033do.f6355do = hashMap3;
            c0033do.m3656if(id, layoutParams);
            int visibility = childAt.getVisibility();
            Cnew cnew = c0033do.f6353do;
            cnew.f6422do = visibility;
            cnew.f6421do = childAt.getAlpha();
            float rotation = childAt.getRotation();
            Ctry ctry = c0033do.f6354do;
            ctry.f6430do = rotation;
            ctry.f6435if = childAt.getRotationX();
            ctry.f6433for = childAt.getRotationY();
            ctry.f6437new = childAt.getScaleX();
            ctry.f6439try = childAt.getScaleY();
            float pivotX = childAt.getPivotX();
            float pivotY = childAt.getPivotY();
            if (pivotX != 0.0d || pivotY != 0.0d) {
                ctry.f6428case = pivotX;
                ctry.f6432else = pivotY;
            }
            ctry.f6434goto = childAt.getTranslationX();
            ctry.f6438this = childAt.getTranslationY();
            ctry.f6427break = childAt.getTranslationZ();
            if (ctry.f6436if) {
                ctry.f6429catch = childAt.getElevation();
            }
            if (childAt instanceof Barrier) {
                Barrier barrier = (Barrier) childAt;
                boolean z = barrier.f6232do.f2299new;
                Cif cif = c0033do.f6352do;
                cif.f6418try = z;
                cif.f6378do = Arrays.copyOf(((ConstraintHelper) barrier).f6239do, barrier.f6241for);
                cif.d = barrier.f6233new;
                cif.e = barrier.f6232do.f2301switch;
            }
            i2++;
            cdo = this;
            childCount = i3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x0178, code lost:
    
        continue;
     */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3653this(android.content.Context r9, android.content.res.XmlResourceParser r10) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.Cdo.m3653this(android.content.Context, android.content.res.XmlResourceParser):void");
    }
}
