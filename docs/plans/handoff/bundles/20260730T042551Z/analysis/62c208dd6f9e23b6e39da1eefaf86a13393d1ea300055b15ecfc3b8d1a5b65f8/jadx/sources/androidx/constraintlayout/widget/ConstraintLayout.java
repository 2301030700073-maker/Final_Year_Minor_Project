package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.Cdo;
import androidx.constraintlayout.widget.Constraints;
import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import defpackage.C0093Aa;
import defpackage.C0181Ea;
import defpackage.C0203Fa;
import defpackage.C0389Nl;
import defpackage.C2688eM;
import defpackage.C2710em;
import defpackage.C2789g5;
import defpackage.C3706sq;
import defpackage.O2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {

    /* renamed from: this, reason: not valid java name */
    public static final /* synthetic */ int f6242this = 0;

    /* renamed from: case, reason: not valid java name */
    public int f6243case;

    /* renamed from: do, reason: not valid java name */
    public C0093Aa f6244do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0203Fa f6245do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SparseArray<View> f6246do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f6247do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public androidx.constraintlayout.widget.Cdo f6248do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<ConstraintHelper> f6249do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public HashMap<String, Integer> f6250do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6251do;

    /* renamed from: else, reason: not valid java name */
    public int f6252else;

    /* renamed from: for, reason: not valid java name */
    public int f6253for;

    /* renamed from: goto, reason: not valid java name */
    public int f6254goto;

    /* renamed from: if, reason: not valid java name */
    public final SparseArray<C0181Ea> f6255if;

    /* renamed from: new, reason: not valid java name */
    public int f6256new;

    /* renamed from: try, reason: not valid java name */
    public int f6257try;

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$do, reason: invalid class name */
    public class Cdo implements C2789g5.Cif {

        /* renamed from: case, reason: not valid java name */
        public int f6319case;

        /* renamed from: do, reason: not valid java name */
        public int f6320do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ConstraintLayout f6321do;

        /* renamed from: for, reason: not valid java name */
        public int f6322for;

        /* renamed from: if, reason: not valid java name */
        public int f6323if;

        /* renamed from: new, reason: not valid java name */
        public int f6324new;

        /* renamed from: try, reason: not valid java name */
        public int f6325try;

        public Cdo(ConstraintLayout constraintLayout) {
            this.f6321do = constraintLayout;
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x01f3  */
        /* JADX WARN: Removed duplicated region for block: B:103:0x01fb A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:106:0x0213 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:110:0x021d  */
        /* JADX WARN: Removed duplicated region for block: B:112:0x0228  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0224  */
        /* JADX WARN: Removed duplicated region for block: B:116:0x0208 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:118:0x01ee  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x01dc  */
        /* JADX WARN: Removed duplicated region for block: B:120:0x01cd  */
        /* JADX WARN: Removed duplicated region for block: B:121:0x01bd  */
        /* JADX WARN: Removed duplicated region for block: B:127:0x0147  */
        /* JADX WARN: Removed duplicated region for block: B:128:0x0142  */
        /* JADX WARN: Removed duplicated region for block: B:157:0x0132  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00bc  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0140  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0145  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x014e A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0156 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x015f  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x016a  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x017d A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:59:0x023e  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0245  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0253  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0258  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0255  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0240  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0196  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x01b5  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x01c6  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x01d7  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x01e1  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x01e9  */
        @android.annotation.SuppressLint({"WrongCall"})
        /* renamed from: do, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m3642do(defpackage.C0181Ea r18, defpackage.C2789g5.Cdo r19) {
            /*
                Method dump skipped, instructions count: 619
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.Cdo.m3642do(Ea, g5$do):void");
        }
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6246do = new SparseArray<>();
        this.f6249do = new ArrayList<>(4);
        this.f6245do = new C0203Fa();
        this.f6253for = 0;
        this.f6256new = 0;
        this.f6257try = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f6243case = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f6251do = true;
        this.f6252else = 263;
        this.f6248do = null;
        this.f6244do = null;
        this.f6254goto = -1;
        this.f6250do = new HashMap<>();
        this.f6255if = new SparseArray<>();
        this.f6247do = new Cdo(this);
        m3640try(attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
    }

    /* renamed from: break, reason: not valid java name */
    public final void m3633break(String str, Integer num) {
        if ((str instanceof String) && (num instanceof Integer)) {
            if (this.f6250do == null) {
                this.f6250do = new HashMap<>();
            }
            int indexOf = str.indexOf("/");
            if (indexOf != -1) {
                str = str.substring(indexOf + 1);
            }
            this.f6250do.put(str, Integer.valueOf(num.intValue()));
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final boolean m3634case() {
        return ((getContext().getApplicationInfo().flags & 4194304) != 0) && 1 == getLayoutDirection();
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<ConstraintHelper> arrayList = this.f6249do;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                arrayList.get(i).mo3571throw(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i3 = (int) ((parseInt / 1080.0f) * width);
                        int i4 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i3;
                        float f2 = i4;
                        float f3 = i3 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float parseInt4 = i4 + ((int) ((Integer.parseInt(split[3]) / 1920.0f) * height));
                        canvas.drawLine(f3, f2, f3, parseInt4, paint);
                        canvas.drawLine(f3, parseInt4, f, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f3, f2, paint);
                    }
                }
            }
        }
    }

    /* renamed from: else */
    public void mo3579else(int i) {
        this.f6244do = new C0093Aa(getContext(), this, i);
    }

    /* renamed from: for, reason: not valid java name */
    public final View m3635for(int i) {
        return this.f6246do.get(i);
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.f6251do = true;
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m3636goto(int i, int i2, int i3, boolean z, boolean z2, int i4) {
        Cdo cdo = this.f6247do;
        int i5 = cdo.f6324new;
        int resolveSizeAndState = View.resolveSizeAndState(i3 + cdo.f6322for, i, 0);
        int resolveSizeAndState2 = View.resolveSizeAndState(i4 + i5, i2, 0) & 16777215;
        int min = Math.min(this.f6257try, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.f6243case, resolveSizeAndState2);
        if (z) {
            min |= 16777216;
        }
        if (z2) {
            min2 |= 16777216;
        }
        setMeasuredDimension(min, min2);
    }

    /* JADX WARN: Removed duplicated region for block: B:161:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x01e6  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x0303 -> B:77:0x0304). Please report as a decompilation issue!!! */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3637if(boolean r20, android.view.View r21, defpackage.C0181Ea r22, androidx.constraintlayout.widget.ConstraintLayout.LayoutParams r23, android.util.SparseArray<defpackage.C0181Ea> r24) {
        /*
            Method dump skipped, instructions count: 871
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.m3637if(boolean, android.view.View, Ea, androidx.constraintlayout.widget.ConstraintLayout$LayoutParams, android.util.SparseArray):void");
    }

    /* renamed from: new, reason: not valid java name */
    public final C0181Ea m3638new(View view) {
        if (view == this) {
            return this.f6245do;
        }
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f6271do;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            C0181Ea c0181Ea = layoutParams.f6271do;
            if ((childAt.getVisibility() != 8 || layoutParams.f6263case || layoutParams.f6276else || isInEditMode) && !layoutParams.f6285goto) {
                int m484while = c0181Ea.m484while();
                int m470import = c0181Ea.m470import();
                int m481throw = c0181Ea.m481throw() + m484while;
                int m462const = c0181Ea.m462const() + m470import;
                childAt.layout(m484while, m470import, m481throw, m462const);
                if ((childAt instanceof Placeholder) && (view = ((Placeholder) childAt).f6340do) != null) {
                    view.setVisibility(0);
                    view.layout(m484while, m470import, m481throw, m462const);
                }
            }
        }
        ArrayList<ConstraintHelper> arrayList = this.f6249do;
        int size = arrayList.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                arrayList.get(i6).mo3570super();
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        androidx.constraintlayout.widget.Cdo cdo;
        int i3;
        String resourceName;
        int id;
        C0181Ea c0181Ea;
        boolean m3634case = m3634case();
        C0203Fa c0203Fa = this.f6245do;
        c0203Fa.f1067new = m3634case;
        if (this.f6251do) {
            this.f6251do = false;
            int childCount = getChildCount();
            int i4 = 0;
            while (true) {
                if (i4 >= childCount) {
                    z = false;
                    break;
                } else {
                    if (getChildAt(i4).isLayoutRequested()) {
                        z = true;
                        break;
                    }
                    i4++;
                }
            }
            if (z) {
                boolean isInEditMode = isInEditMode();
                int childCount2 = getChildCount();
                for (int i5 = 0; i5 < childCount2; i5++) {
                    C0181Ea m3638new = m3638new(getChildAt(i5));
                    if (m3638new != null) {
                        m3638new.mo479switch();
                    }
                }
                int i6 = -1;
                if (isInEditMode) {
                    for (int i7 = 0; i7 < childCount2; i7++) {
                        View childAt = getChildAt(i7);
                        try {
                            resourceName = getResources().getResourceName(childAt.getId());
                            m3633break(resourceName, Integer.valueOf(childAt.getId()));
                            int indexOf = resourceName.indexOf(47);
                            if (indexOf != -1) {
                                resourceName = resourceName.substring(indexOf + 1);
                            }
                            id = childAt.getId();
                        } catch (Resources.NotFoundException unused) {
                        }
                        if (id != 0) {
                            View view = this.f6246do.get(id);
                            if (view == null && (view = findViewById(id)) != null && view != this && view.getParent() == this) {
                                onViewAdded(view);
                            }
                            if (view != this) {
                                c0181Ea = view == null ? null : ((LayoutParams) view.getLayoutParams()).f6271do;
                                c0181Ea.f812do = resourceName;
                            }
                        }
                        c0181Ea = c0203Fa;
                        c0181Ea.f812do = resourceName;
                    }
                }
                if (this.f6254goto != -1) {
                    int i8 = 0;
                    while (i8 < childCount2) {
                        View childAt2 = getChildAt(i8);
                        if (childAt2.getId() == this.f6254goto && (childAt2 instanceof Constraints)) {
                            Constraints constraints = (Constraints) childAt2;
                            if (constraints.f6326do == null) {
                                constraints.f6326do = new androidx.constraintlayout.widget.Cdo();
                            }
                            androidx.constraintlayout.widget.Cdo cdo2 = constraints.f6326do;
                            cdo2.getClass();
                            int childCount3 = constraints.getChildCount();
                            HashMap<Integer, Cdo.C0033do> hashMap = cdo2.f6349if;
                            hashMap.clear();
                            int i9 = 0;
                            while (i9 < childCount3) {
                                View childAt3 = constraints.getChildAt(i9);
                                Constraints.LayoutParams layoutParams = (Constraints.LayoutParams) childAt3.getLayoutParams();
                                int id2 = childAt3.getId();
                                if (cdo2.f6348do && id2 == i6) {
                                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                                }
                                if (!hashMap.containsKey(Integer.valueOf(id2))) {
                                    hashMap.put(Integer.valueOf(id2), new Cdo.C0033do());
                                }
                                Cdo.C0033do c0033do = hashMap.get(Integer.valueOf(id2));
                                if (childAt3 instanceof ConstraintHelper) {
                                    ConstraintHelper constraintHelper = (ConstraintHelper) childAt3;
                                    c0033do.m3655for(id2, layoutParams);
                                    if (constraintHelper instanceof Barrier) {
                                        Cdo.Cif cif = c0033do.f6352do;
                                        cdo = cdo2;
                                        cif.f = 1;
                                        Barrier barrier = (Barrier) constraintHelper;
                                        cif.d = barrier.f6233new;
                                        i3 = childCount3;
                                        cif.f6378do = Arrays.copyOf(((ConstraintHelper) barrier).f6239do, barrier.f6241for);
                                        cif.e = barrier.f6232do.f2301switch;
                                        c0033do.m3655for(id2, layoutParams);
                                        i9++;
                                        cdo2 = cdo;
                                        childCount3 = i3;
                                        i6 = -1;
                                    }
                                }
                                cdo = cdo2;
                                i3 = childCount3;
                                c0033do.m3655for(id2, layoutParams);
                                i9++;
                                cdo2 = cdo;
                                childCount3 = i3;
                                i6 = -1;
                            }
                            this.f6248do = constraints.f6326do;
                        }
                        i8++;
                        i6 = -1;
                    }
                }
                androidx.constraintlayout.widget.Cdo cdo3 = this.f6248do;
                if (cdo3 != null) {
                    cdo3.m3649for(this);
                }
                ((C2688eM) c0203Fa).f12669if.clear();
                ArrayList<ConstraintHelper> arrayList = this.f6249do;
                int size = arrayList.size();
                if (size > 0) {
                    for (int i10 = 0; i10 < size; i10++) {
                        ConstraintHelper constraintHelper2 = arrayList.get(i10);
                        if (constraintHelper2.isInEditMode()) {
                            constraintHelper2.m3626const(constraintHelper2.f6235break);
                        }
                        C2710em c2710em = constraintHelper2.f6237do;
                        if (c2710em != null) {
                            c2710em.mo4934do();
                            for (int i11 = 0; i11 < constraintHelper2.f6241for; i11++) {
                                int i12 = constraintHelper2.f6239do[i11];
                                View m3635for = m3635for(i12);
                                if (m3635for == null) {
                                    Integer valueOf = Integer.valueOf(i12);
                                    HashMap<Integer, String> hashMap2 = constraintHelper2.f6238do;
                                    String str = hashMap2.get(valueOf);
                                    int m3629goto = constraintHelper2.m3629goto(this, str);
                                    if (m3629goto != 0) {
                                        constraintHelper2.f6239do[i11] = m3629goto;
                                        hashMap2.put(Integer.valueOf(m3629goto), str);
                                        m3635for = m3635for(m3629goto);
                                    }
                                }
                                if (m3635for != null) {
                                    constraintHelper2.f6237do.mo4935for(m3638new(m3635for));
                                }
                            }
                            constraintHelper2.f6237do.mo446if();
                        }
                    }
                }
                for (int i13 = 0; i13 < childCount2; i13++) {
                    View childAt4 = getChildAt(i13);
                    if (childAt4 instanceof Placeholder) {
                        Placeholder placeholder = (Placeholder) childAt4;
                        if (placeholder.f6341for == -1 && !placeholder.isInEditMode()) {
                            placeholder.setVisibility(placeholder.f6342new);
                        }
                        View findViewById = findViewById(placeholder.f6341for);
                        placeholder.f6340do = findViewById;
                        if (findViewById != null) {
                            ((LayoutParams) findViewById.getLayoutParams()).f6285goto = true;
                            placeholder.f6340do.setVisibility(0);
                            placeholder.setVisibility(0);
                        }
                    }
                }
                SparseArray<C0181Ea> sparseArray = this.f6255if;
                sparseArray.clear();
                sparseArray.put(0, c0203Fa);
                sparseArray.put(getId(), c0203Fa);
                for (int i14 = 0; i14 < childCount2; i14++) {
                    View childAt5 = getChildAt(i14);
                    sparseArray.put(childAt5.getId(), m3638new(childAt5));
                }
                for (int i15 = 0; i15 < childCount2; i15++) {
                    View childAt6 = getChildAt(i15);
                    C0181Ea m3638new2 = m3638new(childAt6);
                    if (m3638new2 != null) {
                        LayoutParams layoutParams2 = (LayoutParams) childAt6.getLayoutParams();
                        ((C2688eM) c0203Fa).f12669if.add(m3638new2);
                        C0181Ea c0181Ea2 = m3638new2.f808do;
                        if (c0181Ea2 != null) {
                            ((C2688eM) c0181Ea2).f12669if.remove(m3638new2);
                            m3638new2.f808do = null;
                        }
                        m3638new2.f808do = c0203Fa;
                        m3637if(isInEditMode, childAt6, m3638new2, layoutParams2, sparseArray);
                    }
                }
            }
            if (z) {
                c0203Fa.m620transient();
            }
        }
        m3639this(c0203Fa, this.f6252else, i, i2);
        m3636goto(i, i2, c0203Fa.m481throw(), c0203Fa.f1072try, c0203Fa.f1059case, c0203Fa.m462const());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        C0181Ea m3638new = m3638new(view);
        if ((view instanceof Guideline) && !(m3638new instanceof C0389Nl)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            C0389Nl c0389Nl = new C0389Nl();
            layoutParams.f6271do = c0389Nl;
            layoutParams.f6263case = true;
            c0389Nl.m1550strictfp(layoutParams.f6300protected);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.m3632while();
            ((LayoutParams) view.getLayoutParams()).f6276else = true;
            ArrayList<ConstraintHelper> arrayList = this.f6249do;
            if (!arrayList.contains(constraintHelper)) {
                arrayList.add(constraintHelper);
            }
        }
        this.f6246do.put(view.getId(), view);
        this.f6251do = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f6246do.remove(view.getId());
        C0181Ea m3638new = m3638new(view);
        ((C2688eM) this.f6245do).f12669if.remove(m3638new);
        m3638new.f808do = null;
        this.f6249do.remove(view);
        this.f6251do = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        super.removeView(view);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f6251do = true;
        super.requestLayout();
    }

    @Override // android.view.View
    public final void setId(int i) {
        int id = getId();
        SparseArray<View> sparseArray = this.f6246do;
        sparseArray.remove(id);
        super.setId(i);
        sparseArray.put(getId(), this);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:133:0x047c  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0565  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0753  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0755  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0747  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x055f  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0467  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01eb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01f5  */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3639this(defpackage.C0203Fa r27, int r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 1881
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.m3639this(Fa, int, int, int):void");
    }

    /* renamed from: try, reason: not valid java name */
    public final void m3640try(AttributeSet attributeSet, int i) {
        C0203Fa c0203Fa = this.f6245do;
        ((C0181Ea) c0203Fa).f811do = this;
        Cdo cdo = this.f6247do;
        c0203Fa.f1062do = cdo;
        c0203Fa.f1061do.f4884do = cdo;
        this.f6246do.put(getId(), this);
        this.f6248do = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, O2.x, i, 0);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == 9) {
                    this.f6253for = obtainStyledAttributes.getDimensionPixelOffset(index, this.f6253for);
                } else if (index == 10) {
                    this.f6256new = obtainStyledAttributes.getDimensionPixelOffset(index, this.f6256new);
                } else if (index == 7) {
                    this.f6257try = obtainStyledAttributes.getDimensionPixelOffset(index, this.f6257try);
                } else if (index == 8) {
                    this.f6243case = obtainStyledAttributes.getDimensionPixelOffset(index, this.f6243case);
                } else if (index == 89) {
                    this.f6252else = obtainStyledAttributes.getInt(index, this.f6252else);
                } else if (index == 38) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            mo3579else(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.f6244do = null;
                        }
                    }
                } else if (index == 18) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        androidx.constraintlayout.widget.Cdo cdo2 = new androidx.constraintlayout.widget.Cdo();
                        this.f6248do = cdo2;
                        cdo2.m3650goto(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.f6248do = null;
                    }
                    this.f6254goto = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        int i3 = this.f6252else;
        c0203Fa.f1060default = i3;
        C3706sq.f15524if = (i3 & 256) == 256;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6246do = new SparseArray<>();
        this.f6249do = new ArrayList<>(4);
        this.f6245do = new C0203Fa();
        this.f6253for = 0;
        this.f6256new = 0;
        this.f6257try = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f6243case = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f6251do = true;
        this.f6252else = 263;
        this.f6248do = null;
        this.f6244do = null;
        this.f6254goto = -1;
        this.f6250do = new HashMap<>();
        this.f6255if = new SparseArray<>();
        this.f6247do = new Cdo(this);
        m3640try(attributeSet, i);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int a;

        /* renamed from: abstract, reason: not valid java name */
        public int f6258abstract;
        public int b;

        /* renamed from: break, reason: not valid java name */
        public float f6259break;

        /* renamed from: break, reason: not valid java name and collision with other field name */
        public int f6260break;
        public int c;

        /* renamed from: case, reason: not valid java name */
        public float f6261case;

        /* renamed from: case, reason: not valid java name and collision with other field name */
        public int f6262case;

        /* renamed from: case, reason: not valid java name and collision with other field name */
        public boolean f6263case;

        /* renamed from: catch, reason: not valid java name */
        public int f6264catch;

        /* renamed from: class, reason: not valid java name */
        public int f6265class;

        /* renamed from: const, reason: not valid java name */
        public int f6266const;

        /* renamed from: continue, reason: not valid java name */
        public int f6267continue;
        public int d;

        /* renamed from: default, reason: not valid java name */
        public int f6268default;

        /* renamed from: do, reason: not valid java name */
        public float f6269do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f6270do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0181Ea f6271do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f6272do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f6273do;

        /* renamed from: else, reason: not valid java name */
        public float f6274else;

        /* renamed from: else, reason: not valid java name and collision with other field name */
        public int f6275else;

        /* renamed from: else, reason: not valid java name and collision with other field name */
        public boolean f6276else;

        /* renamed from: extends, reason: not valid java name */
        public int f6277extends;

        /* renamed from: final, reason: not valid java name */
        public int f6278final;

        /* renamed from: finally, reason: not valid java name */
        public int f6279finally;

        /* renamed from: for, reason: not valid java name */
        public float f6280for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public int f6281for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public boolean f6282for;

        /* renamed from: goto, reason: not valid java name */
        public float f6283goto;

        /* renamed from: goto, reason: not valid java name and collision with other field name */
        public int f6284goto;

        /* renamed from: goto, reason: not valid java name and collision with other field name */
        public boolean f6285goto;

        /* renamed from: if, reason: not valid java name */
        public float f6286if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public int f6287if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public String f6288if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f6289if;

        /* renamed from: implements, reason: not valid java name */
        public int f6290implements;

        /* renamed from: import, reason: not valid java name */
        public final int f6291import;

        /* renamed from: instanceof, reason: not valid java name */
        public int f6292instanceof;

        /* renamed from: interface, reason: not valid java name */
        public int f6293interface;

        /* renamed from: native, reason: not valid java name */
        public int f6294native;

        /* renamed from: new, reason: not valid java name */
        public float f6295new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public int f6296new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public boolean f6297new;

        /* renamed from: package, reason: not valid java name */
        public int f6298package;

        /* renamed from: private, reason: not valid java name */
        public int f6299private;

        /* renamed from: protected, reason: not valid java name */
        public int f6300protected;

        /* renamed from: public, reason: not valid java name */
        public final int f6301public;

        /* renamed from: return, reason: not valid java name */
        public int f6302return;

        /* renamed from: static, reason: not valid java name */
        public int f6303static;

        /* renamed from: strictfp, reason: not valid java name */
        public int f6304strictfp;

        /* renamed from: super, reason: not valid java name */
        public int f6305super;

        /* renamed from: switch, reason: not valid java name */
        public int f6306switch;

        /* renamed from: synchronized, reason: not valid java name */
        public int f6307synchronized;

        /* renamed from: this, reason: not valid java name */
        public float f6308this;

        /* renamed from: this, reason: not valid java name and collision with other field name */
        public int f6309this;

        /* renamed from: throw, reason: not valid java name */
        public int f6310throw;

        /* renamed from: throws, reason: not valid java name */
        public final int f6311throws;

        /* renamed from: transient, reason: not valid java name */
        public int f6312transient;

        /* renamed from: try, reason: not valid java name */
        public float f6313try;

        /* renamed from: try, reason: not valid java name and collision with other field name */
        public int f6314try;

        /* renamed from: try, reason: not valid java name and collision with other field name */
        public boolean f6315try;

        /* renamed from: volatile, reason: not valid java name */
        public int f6316volatile;

        /* renamed from: while, reason: not valid java name */
        public int f6317while;

        /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$do, reason: invalid class name */
        public static class Cdo {

            /* renamed from: do, reason: not valid java name */
            public static final SparseIntArray f6318do;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f6318do = sparseIntArray;
                sparseIntArray.append(63, 8);
                sparseIntArray.append(64, 9);
                sparseIntArray.append(66, 10);
                sparseIntArray.append(67, 11);
                sparseIntArray.append(73, 12);
                sparseIntArray.append(72, 13);
                sparseIntArray.append(45, 14);
                sparseIntArray.append(44, 15);
                sparseIntArray.append(42, 16);
                sparseIntArray.append(46, 2);
                sparseIntArray.append(48, 3);
                sparseIntArray.append(47, 4);
                sparseIntArray.append(81, 49);
                sparseIntArray.append(82, 50);
                sparseIntArray.append(52, 5);
                sparseIntArray.append(53, 6);
                sparseIntArray.append(54, 7);
                sparseIntArray.append(0, 1);
                sparseIntArray.append(68, 17);
                sparseIntArray.append(69, 18);
                sparseIntArray.append(51, 19);
                sparseIntArray.append(50, 20);
                sparseIntArray.append(85, 21);
                sparseIntArray.append(88, 22);
                sparseIntArray.append(86, 23);
                sparseIntArray.append(83, 24);
                sparseIntArray.append(87, 25);
                sparseIntArray.append(84, 26);
                sparseIntArray.append(59, 29);
                sparseIntArray.append(74, 30);
                sparseIntArray.append(49, 44);
                sparseIntArray.append(61, 45);
                sparseIntArray.append(76, 46);
                sparseIntArray.append(60, 47);
                sparseIntArray.append(75, 48);
                sparseIntArray.append(40, 27);
                sparseIntArray.append(39, 28);
                sparseIntArray.append(77, 31);
                sparseIntArray.append(55, 32);
                sparseIntArray.append(79, 33);
                sparseIntArray.append(78, 34);
                sparseIntArray.append(80, 35);
                sparseIntArray.append(57, 36);
                sparseIntArray.append(56, 37);
                sparseIntArray.append(58, 38);
                sparseIntArray.append(62, 39);
                sparseIntArray.append(71, 40);
                sparseIntArray.append(65, 41);
                sparseIntArray.append(43, 42);
                sparseIntArray.append(41, 43);
                sparseIntArray.append(70, 51);
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i;
            this.f6270do = -1;
            this.f6287if = -1;
            this.f6269do = -1.0f;
            this.f6281for = -1;
            this.f6296new = -1;
            this.f6314try = -1;
            this.f6262case = -1;
            this.f6275else = -1;
            this.f6284goto = -1;
            this.f6309this = -1;
            this.f6260break = -1;
            this.f6264catch = -1;
            this.f6265class = -1;
            this.f6266const = 0;
            this.f6286if = 0.0f;
            this.f6278final = -1;
            this.f6305super = -1;
            this.f6310throw = -1;
            this.f6317while = -1;
            this.f6291import = -1;
            this.f6294native = -1;
            this.f6301public = -1;
            this.f6302return = -1;
            this.f6303static = -1;
            this.f6306switch = -1;
            this.f6280for = 0.5f;
            this.f6295new = 0.5f;
            this.f6272do = null;
            this.f6311throws = 1;
            this.f6313try = -1.0f;
            this.f6261case = -1.0f;
            this.f6268default = 0;
            this.f6277extends = 0;
            this.f6279finally = 0;
            this.f6298package = 0;
            this.f6299private = 0;
            this.f6258abstract = 0;
            this.f6267continue = 0;
            this.f6304strictfp = 0;
            this.f6274else = 1.0f;
            this.f6283goto = 1.0f;
            this.f6316volatile = -1;
            this.f6293interface = -1;
            this.f6300protected = -1;
            this.f6273do = false;
            this.f6289if = false;
            this.f6288if = null;
            this.f6282for = true;
            this.f6297new = true;
            this.f6315try = false;
            this.f6263case = false;
            this.f6276else = false;
            this.f6285goto = false;
            this.f6312transient = -1;
            this.f6290implements = -1;
            this.f6292instanceof = -1;
            this.f6307synchronized = -1;
            this.a = -1;
            this.b = -1;
            this.f6308this = 0.5f;
            this.f6271do = new C0181Ea();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.x);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                int i3 = Cdo.f6318do.get(index);
                switch (i3) {
                    case 1:
                        this.f6300protected = obtainStyledAttributes.getInt(index, this.f6300protected);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.f6265class);
                        this.f6265class = resourceId;
                        if (resourceId == -1) {
                            this.f6265class = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.f6266const = obtainStyledAttributes.getDimensionPixelSize(index, this.f6266const);
                        break;
                    case 4:
                        float f = obtainStyledAttributes.getFloat(index, this.f6286if) % 360.0f;
                        this.f6286if = f;
                        if (f < 0.0f) {
                            this.f6286if = (360.0f - f) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.f6270do = obtainStyledAttributes.getDimensionPixelOffset(index, this.f6270do);
                        break;
                    case 6:
                        this.f6287if = obtainStyledAttributes.getDimensionPixelOffset(index, this.f6287if);
                        break;
                    case 7:
                        this.f6269do = obtainStyledAttributes.getFloat(index, this.f6269do);
                        break;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.f6281for);
                        this.f6281for = resourceId2;
                        if (resourceId2 == -1) {
                            this.f6281for = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.f6296new);
                        this.f6296new = resourceId3;
                        if (resourceId3 == -1) {
                            this.f6296new = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f6314try);
                        this.f6314try = resourceId4;
                        if (resourceId4 == -1) {
                            this.f6314try = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.f6262case);
                        this.f6262case = resourceId5;
                        if (resourceId5 == -1) {
                            this.f6262case = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.f6275else);
                        this.f6275else = resourceId6;
                        if (resourceId6 == -1) {
                            this.f6275else = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.f6284goto);
                        this.f6284goto = resourceId7;
                        if (resourceId7 == -1) {
                            this.f6284goto = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.f6309this);
                        this.f6309this = resourceId8;
                        if (resourceId8 == -1) {
                            this.f6309this = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.f6260break);
                        this.f6260break = resourceId9;
                        if (resourceId9 == -1) {
                            this.f6260break = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.f6264catch);
                        this.f6264catch = resourceId10;
                        if (resourceId10 == -1) {
                            this.f6264catch = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.f6278final);
                        this.f6278final = resourceId11;
                        if (resourceId11 == -1) {
                            this.f6278final = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.f6305super);
                        this.f6305super = resourceId12;
                        if (resourceId12 == -1) {
                            this.f6305super = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.f6310throw);
                        this.f6310throw = resourceId13;
                        if (resourceId13 == -1) {
                            this.f6310throw = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.f6317while);
                        this.f6317while = resourceId14;
                        if (resourceId14 == -1) {
                            this.f6317while = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.f6291import = obtainStyledAttributes.getDimensionPixelSize(index, this.f6291import);
                        break;
                    case 22:
                        this.f6294native = obtainStyledAttributes.getDimensionPixelSize(index, this.f6294native);
                        break;
                    case ConnectionResult.API_DISABLED /* 23 */:
                        this.f6301public = obtainStyledAttributes.getDimensionPixelSize(index, this.f6301public);
                        break;
                    case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                        this.f6302return = obtainStyledAttributes.getDimensionPixelSize(index, this.f6302return);
                        break;
                    case Constants.MAX_TREE_DEPTH /* 25 */:
                        this.f6303static = obtainStyledAttributes.getDimensionPixelSize(index, this.f6303static);
                        break;
                    case 26:
                        this.f6306switch = obtainStyledAttributes.getDimensionPixelSize(index, this.f6306switch);
                        break;
                    case 27:
                        this.f6273do = obtainStyledAttributes.getBoolean(index, this.f6273do);
                        break;
                    case 28:
                        this.f6289if = obtainStyledAttributes.getBoolean(index, this.f6289if);
                        break;
                    case 29:
                        this.f6280for = obtainStyledAttributes.getFloat(index, this.f6280for);
                        break;
                    case 30:
                        this.f6295new = obtainStyledAttributes.getFloat(index, this.f6295new);
                        break;
                    case 31:
                        this.f6279finally = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 32:
                        this.f6298package = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 33:
                        try {
                            this.f6299private = obtainStyledAttributes.getDimensionPixelSize(index, this.f6299private);
                            break;
                        } catch (Exception unused) {
                            if (obtainStyledAttributes.getInt(index, this.f6299private) == -2) {
                                this.f6299private = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.f6267continue = obtainStyledAttributes.getDimensionPixelSize(index, this.f6267continue);
                            break;
                        } catch (Exception unused2) {
                            if (obtainStyledAttributes.getInt(index, this.f6267continue) == -2) {
                                this.f6267continue = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.f6274else = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f6274else));
                        this.f6279finally = 2;
                        break;
                    case 36:
                        try {
                            this.f6258abstract = obtainStyledAttributes.getDimensionPixelSize(index, this.f6258abstract);
                            break;
                        } catch (Exception unused3) {
                            if (obtainStyledAttributes.getInt(index, this.f6258abstract) == -2) {
                                this.f6258abstract = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.f6304strictfp = obtainStyledAttributes.getDimensionPixelSize(index, this.f6304strictfp);
                            break;
                        } catch (Exception unused4) {
                            if (obtainStyledAttributes.getInt(index, this.f6304strictfp) == -2) {
                                this.f6304strictfp = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.f6283goto = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f6283goto));
                        this.f6298package = 2;
                        break;
                    default:
                        switch (i3) {
                            case 44:
                                String string = obtainStyledAttributes.getString(index);
                                this.f6272do = string;
                                this.f6311throws = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int indexOf = this.f6272do.indexOf(44);
                                    if (indexOf <= 0 || indexOf >= length - 1) {
                                        i = 0;
                                    } else {
                                        String substring = this.f6272do.substring(0, indexOf);
                                        if (substring.equalsIgnoreCase("W")) {
                                            this.f6311throws = 0;
                                        } else if (substring.equalsIgnoreCase("H")) {
                                            this.f6311throws = 1;
                                        }
                                        i = indexOf + 1;
                                    }
                                    int indexOf2 = this.f6272do.indexOf(58);
                                    if (indexOf2 < 0 || indexOf2 >= length - 1) {
                                        String substring2 = this.f6272do.substring(i);
                                        if (substring2.length() > 0) {
                                            Float.parseFloat(substring2);
                                            break;
                                        } else {
                                            break;
                                        }
                                    } else {
                                        String substring3 = this.f6272do.substring(i, indexOf2);
                                        String substring4 = this.f6272do.substring(indexOf2 + 1);
                                        if (substring3.length() > 0 && substring4.length() > 0) {
                                            try {
                                                float parseFloat = Float.parseFloat(substring3);
                                                float parseFloat2 = Float.parseFloat(substring4);
                                                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                                    if (this.f6311throws == 1) {
                                                        Math.abs(parseFloat2 / parseFloat);
                                                        break;
                                                    } else {
                                                        Math.abs(parseFloat / parseFloat2);
                                                        break;
                                                    }
                                                }
                                            } catch (NumberFormatException unused5) {
                                                break;
                                            }
                                        }
                                    }
                                } else {
                                    break;
                                }
                                break;
                            case 45:
                                this.f6313try = obtainStyledAttributes.getFloat(index, this.f6313try);
                                break;
                            case 46:
                                this.f6261case = obtainStyledAttributes.getFloat(index, this.f6261case);
                                break;
                            case 47:
                                this.f6268default = obtainStyledAttributes.getInt(index, 0);
                                break;
                            case 48:
                                this.f6277extends = obtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.f6316volatile = obtainStyledAttributes.getDimensionPixelOffset(index, this.f6316volatile);
                                break;
                            case 50:
                                this.f6293interface = obtainStyledAttributes.getDimensionPixelOffset(index, this.f6293interface);
                                break;
                            case 51:
                                this.f6288if = obtainStyledAttributes.getString(index);
                                break;
                        }
                }
            }
            obtainStyledAttributes.recycle();
            m3641do();
        }

        /* renamed from: do, reason: not valid java name */
        public final void m3641do() {
            this.f6263case = false;
            this.f6282for = true;
            this.f6297new = true;
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == -2 && this.f6273do) {
                this.f6282for = false;
                if (this.f6279finally == 0) {
                    this.f6279finally = 1;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == -2 && this.f6289if) {
                this.f6297new = false;
                if (this.f6298package == 0) {
                    this.f6298package = 1;
                }
            }
            if (i == 0 || i == -1) {
                this.f6282for = false;
                if (i == 0 && this.f6279finally == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.f6273do = true;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.f6297new = false;
                if (i2 == 0 && this.f6298package == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.f6289if = true;
                }
            }
            if (this.f6269do == -1.0f && this.f6270do == -1 && this.f6287if == -1) {
                return;
            }
            this.f6263case = true;
            this.f6282for = true;
            this.f6297new = true;
            if (!(this.f6271do instanceof C0389Nl)) {
                this.f6271do = new C0389Nl();
            }
            ((C0389Nl) this.f6271do).m1550strictfp(this.f6300protected);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0056  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x007c  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @android.annotation.TargetApi(17)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void resolveLayoutDirection(int r10) {
            /*
                Method dump skipped, instructions count: 253
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.resolveLayoutDirection(int):void");
        }

        public LayoutParams() {
            super(-2, -2);
            this.f6270do = -1;
            this.f6287if = -1;
            this.f6269do = -1.0f;
            this.f6281for = -1;
            this.f6296new = -1;
            this.f6314try = -1;
            this.f6262case = -1;
            this.f6275else = -1;
            this.f6284goto = -1;
            this.f6309this = -1;
            this.f6260break = -1;
            this.f6264catch = -1;
            this.f6265class = -1;
            this.f6266const = 0;
            this.f6286if = 0.0f;
            this.f6278final = -1;
            this.f6305super = -1;
            this.f6310throw = -1;
            this.f6317while = -1;
            this.f6291import = -1;
            this.f6294native = -1;
            this.f6301public = -1;
            this.f6302return = -1;
            this.f6303static = -1;
            this.f6306switch = -1;
            this.f6280for = 0.5f;
            this.f6295new = 0.5f;
            this.f6272do = null;
            this.f6311throws = 1;
            this.f6313try = -1.0f;
            this.f6261case = -1.0f;
            this.f6268default = 0;
            this.f6277extends = 0;
            this.f6279finally = 0;
            this.f6298package = 0;
            this.f6299private = 0;
            this.f6258abstract = 0;
            this.f6267continue = 0;
            this.f6304strictfp = 0;
            this.f6274else = 1.0f;
            this.f6283goto = 1.0f;
            this.f6316volatile = -1;
            this.f6293interface = -1;
            this.f6300protected = -1;
            this.f6273do = false;
            this.f6289if = false;
            this.f6288if = null;
            this.f6282for = true;
            this.f6297new = true;
            this.f6315try = false;
            this.f6263case = false;
            this.f6276else = false;
            this.f6285goto = false;
            this.f6312transient = -1;
            this.f6290implements = -1;
            this.f6292instanceof = -1;
            this.f6307synchronized = -1;
            this.a = -1;
            this.b = -1;
            this.f6308this = 0.5f;
            this.f6271do = new C0181Ea();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f6270do = -1;
            this.f6287if = -1;
            this.f6269do = -1.0f;
            this.f6281for = -1;
            this.f6296new = -1;
            this.f6314try = -1;
            this.f6262case = -1;
            this.f6275else = -1;
            this.f6284goto = -1;
            this.f6309this = -1;
            this.f6260break = -1;
            this.f6264catch = -1;
            this.f6265class = -1;
            this.f6266const = 0;
            this.f6286if = 0.0f;
            this.f6278final = -1;
            this.f6305super = -1;
            this.f6310throw = -1;
            this.f6317while = -1;
            this.f6291import = -1;
            this.f6294native = -1;
            this.f6301public = -1;
            this.f6302return = -1;
            this.f6303static = -1;
            this.f6306switch = -1;
            this.f6280for = 0.5f;
            this.f6295new = 0.5f;
            this.f6272do = null;
            this.f6311throws = 1;
            this.f6313try = -1.0f;
            this.f6261case = -1.0f;
            this.f6268default = 0;
            this.f6277extends = 0;
            this.f6279finally = 0;
            this.f6298package = 0;
            this.f6299private = 0;
            this.f6258abstract = 0;
            this.f6267continue = 0;
            this.f6304strictfp = 0;
            this.f6274else = 1.0f;
            this.f6283goto = 1.0f;
            this.f6316volatile = -1;
            this.f6293interface = -1;
            this.f6300protected = -1;
            this.f6273do = false;
            this.f6289if = false;
            this.f6288if = null;
            this.f6282for = true;
            this.f6297new = true;
            this.f6315try = false;
            this.f6263case = false;
            this.f6276else = false;
            this.f6285goto = false;
            this.f6312transient = -1;
            this.f6290implements = -1;
            this.f6292instanceof = -1;
            this.f6307synchronized = -1;
            this.a = -1;
            this.b = -1;
            this.f6308this = 0.5f;
            this.f6271do = new C0181Ea();
        }
    }
}
