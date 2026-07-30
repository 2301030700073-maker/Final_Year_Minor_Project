package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.Cbreak;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Ccatch;
import androidx.appcompat.view.menu.Cconst;
import androidx.appcompat.view.menu.Cgoto;
import androidx.appcompat.view.menu.Cthis;
import androidx.appcompat.widget.ActionMenuView;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC0287Is;
import defpackage.AbstractViewOnTouchListenerC3935wj;
import defpackage.C0426Pe;
import defpackage.H;
import defpackage.KH;
import defpackage.UD;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ActionMenuPresenter extends androidx.appcompat.view.menu.Cdo implements H.Cdo {

    /* renamed from: case, reason: not valid java name */
    public int f5606case;

    /* renamed from: do, reason: not valid java name */
    public final SparseBooleanArray f5607do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f5608do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f5609do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor f5610do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f5611do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cnew f5612do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ctry f5613do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5614do;

    /* renamed from: else, reason: not valid java name */
    public int f5615else;

    /* renamed from: for, reason: not valid java name */
    public boolean f5616for;

    /* renamed from: goto, reason: not valid java name */
    public int f5617goto;

    /* renamed from: if, reason: not valid java name */
    public boolean f5618if;

    /* renamed from: this, reason: not valid java name */
    public int f5619this;

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: for, reason: not valid java name */
        public int f5620for;

        /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState() {
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f5620for);
        }

        public SavedState(Parcel parcel) {
            this.f5620for = parcel.readInt();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$case, reason: invalid class name */
    public class Ccase implements Cbreak.Cdo {
        public Ccase() {
        }

        @Override // androidx.appcompat.view.menu.Cbreak.Cdo
        /* renamed from: for */
        public final void mo3279for(androidx.appcompat.view.menu.Ccase ccase, boolean z) {
            if (ccase instanceof Cconst) {
                ccase.mo3325catch().m3333for(false);
            }
            Cbreak.Cdo cdo = ((androidx.appcompat.view.menu.Cdo) ActionMenuPresenter.this).f5450do;
            if (cdo != null) {
                cdo.mo3279for(ccase, z);
            }
        }

        @Override // androidx.appcompat.view.menu.Cbreak.Cdo
        /* renamed from: new */
        public final boolean mo3280new(androidx.appcompat.view.menu.Ccase ccase) {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            if (ccase == ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter).f5451do) {
                return false;
            }
            actionMenuPresenter.f5619this = ((Cconst) ccase).f5447if.f5466do;
            Cbreak.Cdo cdo = ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter).f5450do;
            if (cdo != null) {
                return cdo.mo3280new(ccase);
            }
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$do, reason: invalid class name */
    public class Cdo extends Cthis {
        public Cdo(Context context, Cconst cconst, View view) {
            super(context, cconst, view, false);
            if (!((cconst.f5447if.f5483goto & 32) == 32)) {
                View view2 = ActionMenuPresenter.this.f5612do;
                ((Cthis) this).f5537do = view2 == null ? (View) ((androidx.appcompat.view.menu.Cdo) ActionMenuPresenter.this).f5452do : view2;
            }
            Ccase ccase = ActionMenuPresenter.this.f5608do;
            ((Cthis) this).f5539do = ccase;
            AbstractC0287Is abstractC0287Is = ((Cthis) this).f5535do;
            if (abstractC0287Is != null) {
                abstractC0287Is.mo3316break(ccase);
            }
        }

        @Override // androidx.appcompat.view.menu.Cthis
        /* renamed from: for */
        public final void mo3358for() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.f5609do = null;
            actionMenuPresenter.f5619this = 0;
            super.mo3358for();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final Ctry f5623do;

        public Cfor(Ctry ctry) {
            this.f5623do = ctry;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Ccase.Cdo cdo;
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            androidx.appcompat.view.menu.Ccase ccase = ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter).f5451do;
            if (ccase != null && (cdo = ccase.f5407do) != null) {
                cdo.mo2229do(ccase);
            }
            View view = (View) ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter).f5452do;
            if (view != null && view.getWindowToken() != null) {
                Ctry ctry = this.f5623do;
                boolean z = true;
                if (!ctry.m3359if()) {
                    if (((Cthis) ctry).f5537do == null) {
                        z = false;
                    } else {
                        ctry.m3360new(0, 0, false, false);
                    }
                }
                if (z) {
                    actionMenuPresenter.f5613do = ctry;
                }
            }
            actionMenuPresenter.f5610do = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$if, reason: invalid class name */
    public class Cif extends ActionMenuItemView.Cif {
        public Cif() {
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$new, reason: invalid class name */
    public class Cnew extends AppCompatImageView implements ActionMenuView.Cdo {

        /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$new$do, reason: invalid class name */
        public class Cdo extends AbstractViewOnTouchListenerC3935wj {
            public Cdo(View view) {
                super(view);
            }

            @Override // defpackage.AbstractViewOnTouchListenerC3935wj
            /* renamed from: for */
            public final boolean mo3311for() {
                ActionMenuPresenter.this.m3393super();
                return true;
            }

            @Override // defpackage.AbstractViewOnTouchListenerC3935wj
            /* renamed from: if */
            public final UD mo3312if() {
                Ctry ctry = ActionMenuPresenter.this.f5613do;
                if (ctry == null) {
                    return null;
                }
                return ctry.m3357do();
            }

            @Override // defpackage.AbstractViewOnTouchListenerC3935wj
            /* renamed from: new, reason: not valid java name */
            public final boolean mo3395new() {
                ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                if (actionMenuPresenter.f5610do != null) {
                    return false;
                }
                actionMenuPresenter.m3392if();
                return true;
            }
        }

        public Cnew(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            KH.m1131do(this, getContentDescription());
            setOnTouchListener(new Cdo(this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.Cdo
        /* renamed from: case */
        public final boolean mo3304case() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.Cdo
        /* renamed from: for */
        public final boolean mo3306for() {
            return false;
        }

        @Override // android.view.View
        public final boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.m3393super();
            return true;
        }

        @Override // android.widget.ImageView
        public final boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                C0426Pe.Cdo.m1783case(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$try, reason: invalid class name */
    public class Ctry extends Cthis {
        public Ctry(Context context, androidx.appcompat.view.menu.Ccase ccase, Cnew cnew) {
            super(context, ccase, cnew, true);
            this.f5543for = 8388613;
            Ccase ccase2 = ActionMenuPresenter.this.f5608do;
            ((Cthis) this).f5539do = ccase2;
            AbstractC0287Is abstractC0287Is = ((Cthis) this).f5535do;
            if (abstractC0287Is != null) {
                abstractC0287Is.mo3316break(ccase2);
            }
        }

        @Override // androidx.appcompat.view.menu.Cthis
        /* renamed from: for */
        public final void mo3358for() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            androidx.appcompat.view.menu.Ccase ccase = ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter).f5451do;
            if (ccase != null) {
                ccase.m3333for(true);
            }
            actionMenuPresenter.f5613do = null;
            super.mo3358for();
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context);
        this.f5607do = new SparseBooleanArray();
        this.f5608do = new Ccase();
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: case */
    public final boolean mo3317case() {
        ArrayList<Cgoto> arrayList;
        int i;
        int i2;
        boolean z;
        ActionMenuPresenter actionMenuPresenter = this;
        androidx.appcompat.view.menu.Ccase ccase = ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter).f5451do;
        if (ccase != null) {
            arrayList = ccase.m3326class();
            i = arrayList.size();
        } else {
            arrayList = null;
            i = 0;
        }
        int i3 = actionMenuPresenter.f5617goto;
        int i4 = actionMenuPresenter.f5615else;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter).f5452do;
        int i5 = 0;
        boolean z2 = false;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i2 = 2;
            z = true;
            if (i5 >= i) {
                break;
            }
            Cgoto cgoto = arrayList.get(i5);
            int i8 = cgoto.f5491this;
            if ((i8 & 2) == 2) {
                i6++;
            } else if ((i8 & 1) == 1) {
                i7++;
            } else {
                z2 = true;
            }
            if (actionMenuPresenter.f5616for && cgoto.f5490new) {
                i3 = 0;
            }
            i5++;
        }
        if (actionMenuPresenter.f5614do && (z2 || i7 + i6 > i3)) {
            i3--;
        }
        int i9 = i3 - i6;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.f5607do;
        sparseBooleanArray.clear();
        int i10 = 0;
        int i11 = 0;
        while (i10 < i) {
            Cgoto cgoto2 = arrayList.get(i10);
            int i12 = cgoto2.f5491this;
            boolean z3 = (i12 & 2) == i2;
            int i13 = cgoto2.f5485if;
            if (z3) {
                View m3390do = actionMenuPresenter.m3390do(cgoto2, null, viewGroup);
                m3390do.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = m3390do.getMeasuredWidth();
                i4 -= measuredWidth;
                if (i11 == 0) {
                    i11 = measuredWidth;
                }
                if (i13 != 0) {
                    sparseBooleanArray.put(i13, z);
                }
                cgoto2.m3353this(z);
            } else if ((i12 & 1) == z) {
                boolean z4 = sparseBooleanArray.get(i13);
                boolean z5 = (i9 > 0 || z4) && i4 > 0;
                if (z5) {
                    View m3390do2 = actionMenuPresenter.m3390do(cgoto2, null, viewGroup);
                    m3390do2.measure(makeMeasureSpec, makeMeasureSpec);
                    int measuredWidth2 = m3390do2.getMeasuredWidth();
                    i4 -= measuredWidth2;
                    if (i11 == 0) {
                        i11 = measuredWidth2;
                    }
                    z5 &= i4 + i11 > 0;
                }
                if (z5 && i13 != 0) {
                    sparseBooleanArray.put(i13, true);
                } else if (z4) {
                    sparseBooleanArray.put(i13, false);
                    for (int i14 = 0; i14 < i10; i14++) {
                        Cgoto cgoto3 = arrayList.get(i14);
                        if (cgoto3.f5485if == i13) {
                            if ((cgoto3.f5483goto & 32) == 32) {
                                i9++;
                            }
                            cgoto3.m3353this(false);
                        }
                    }
                }
                if (z5) {
                    i9--;
                }
                cgoto2.m3353this(z5);
            } else {
                cgoto2.m3353this(false);
                i10++;
                i2 = 2;
                actionMenuPresenter = this;
                z = true;
            }
            i10++;
            i2 = 2;
            actionMenuPresenter = this;
            z = true;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: class */
    public final void mo3318class(Parcelable parcelable) {
        int i;
        MenuItem findItem;
        if ((parcelable instanceof SavedState) && (i = ((SavedState) parcelable).f5620for) > 0 && (findItem = ((androidx.appcompat.view.menu.Cdo) this).f5451do.findItem(i)) != null) {
            mo3320goto((Cconst) findItem.getSubMenu());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v4, types: [androidx.appcompat.view.menu.catch$do] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* renamed from: do, reason: not valid java name */
    public final View m3390do(Cgoto cgoto, View view, ViewGroup viewGroup) {
        View actionView = cgoto.getActionView();
        if (actionView == null || cgoto.m3351else()) {
            ActionMenuItemView actionMenuItemView = view instanceof Ccatch.Cdo ? (Ccatch.Cdo) view : (Ccatch.Cdo) ((androidx.appcompat.view.menu.Cdo) this).f5449do.inflate(this.f5455new, viewGroup, false);
            actionMenuItemView.mo3307if(cgoto);
            ActionMenuItemView actionMenuItemView2 = actionMenuItemView;
            actionMenuItemView2.f5372do = (ActionMenuView) ((androidx.appcompat.view.menu.Cdo) this).f5452do;
            if (this.f5611do == null) {
                this.f5611do = new Cif();
            }
            actionMenuItemView2.f5371do = this.f5611do;
            actionView = actionMenuItemView;
        }
        actionView.setVisibility(cgoto.f5490new ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!((ActionMenuView) viewGroup).checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(ActionMenuView.m3396catch(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: else */
    public final void mo980else(Context context, androidx.appcompat.view.menu.Ccase ccase) {
        super.f5454if = context;
        LayoutInflater.from(context);
        ((androidx.appcompat.view.menu.Cdo) this).f5451do = ccase;
        Resources resources = context.getResources();
        if (!this.f5618if) {
            this.f5614do = true;
        }
        int i = 2;
        this.f5606case = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i3 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i2 > 600 || ((i2 > 960 && i3 > 720) || (i2 > 720 && i3 > 960))) {
            i = 5;
        } else if (i2 >= 500 || ((i2 > 640 && i3 > 480) || (i2 > 480 && i3 > 640))) {
            i = 4;
        } else if (i2 >= 360) {
            i = 3;
        }
        this.f5617goto = i;
        int i4 = this.f5606case;
        if (this.f5614do) {
            if (this.f5612do == null) {
                this.f5612do = new Cnew(((androidx.appcompat.view.menu.Cdo) this).f5448do);
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f5612do.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i4 -= this.f5612do.getMeasuredWidth();
        } else {
            this.f5612do = null;
        }
        this.f5615else = i4;
        float f = resources.getDisplayMetrics().density;
    }

    /* renamed from: final, reason: not valid java name */
    public final void m3391final(boolean z) {
        if (z) {
            Cbreak.Cdo cdo = ((androidx.appcompat.view.menu.Cdo) this).f5450do;
            if (cdo != null) {
                cdo.mo3280new(((androidx.appcompat.view.menu.Cdo) this).f5451do);
                return;
            }
            return;
        }
        androidx.appcompat.view.menu.Ccase ccase = ((androidx.appcompat.view.menu.Cdo) this).f5451do;
        if (ccase != null) {
            ccase.m3333for(false);
        }
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: for */
    public final void mo3319for(androidx.appcompat.view.menu.Ccase ccase, boolean z) {
        m3392if();
        Cdo cdo = this.f5609do;
        if (cdo != null && cdo.m3359if()) {
            ((Cthis) cdo).f5535do.dismiss();
        }
        Cbreak.Cdo cdo2 = ((androidx.appcompat.view.menu.Cdo) this).f5450do;
        if (cdo2 != null) {
            cdo2.mo3279for(ccase, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x008e  */
    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: goto */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo3320goto(androidx.appcompat.view.menu.Cconst r9) {
        /*
            r8 = this;
            boolean r0 = r9.hasVisibleItems()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            r0 = r9
        L9:
            androidx.appcompat.view.menu.case r2 = r0.f5446do
            androidx.appcompat.view.menu.case r3 = r8.f5451do
            if (r2 == r3) goto L13
            r0 = r2
            androidx.appcompat.view.menu.const r0 = (androidx.appcompat.view.menu.Cconst) r0
            goto L9
        L13:
            androidx.appcompat.view.menu.catch r2 = r8.f5452do
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            if (r2 != 0) goto L1a
            goto L38
        L1a:
            int r3 = r2.getChildCount()
            r4 = 0
        L1f:
            if (r4 >= r3) goto L38
            android.view.View r5 = r2.getChildAt(r4)
            boolean r6 = r5 instanceof androidx.appcompat.view.menu.Ccatch.Cdo
            if (r6 == 0) goto L35
            r6 = r5
            androidx.appcompat.view.menu.catch$do r6 = (androidx.appcompat.view.menu.Ccatch.Cdo) r6
            androidx.appcompat.view.menu.goto r6 = r6.mo3305else()
            androidx.appcompat.view.menu.goto r7 = r0.f5447if
            if (r6 != r7) goto L35
            goto L39
        L35:
            int r4 = r4 + 1
            goto L1f
        L38:
            r5 = 0
        L39:
            if (r5 != 0) goto L3c
            return r1
        L3c:
            androidx.appcompat.view.menu.goto r0 = r9.f5447if
            int r0 = r0.f5466do
            r8.f5619this = r0
            int r0 = r9.size()
            r2 = 0
        L47:
            r3 = 1
            if (r2 >= r0) goto L5f
            android.view.MenuItem r4 = r9.getItem(r2)
            boolean r6 = r4.isVisible()
            if (r6 == 0) goto L5c
            android.graphics.drawable.Drawable r4 = r4.getIcon()
            if (r4 == 0) goto L5c
            r0 = 1
            goto L60
        L5c:
            int r2 = r2 + 1
            goto L47
        L5f:
            r0 = 0
        L60:
            androidx.appcompat.widget.ActionMenuPresenter$do r2 = new androidx.appcompat.widget.ActionMenuPresenter$do
            android.content.Context r4 = r8.f5454if
            r2.<init>(r4, r9, r5)
            r8.f5609do = r2
            r2.f5545if = r0
            Is r2 = r2.f5535do
            if (r2 == 0) goto L72
            r2.mo988while(r0)
        L72:
            androidx.appcompat.widget.ActionMenuPresenter$do r0 = r8.f5609do
            boolean r2 = r0.m3359if()
            if (r2 == 0) goto L7b
            goto L83
        L7b:
            android.view.View r2 = r0.f5537do
            if (r2 != 0) goto L80
            goto L84
        L80:
            r0.m3360new(r1, r1, r1, r1)
        L83:
            r1 = 1
        L84:
            if (r1 == 0) goto L8e
            androidx.appcompat.view.menu.break$do r0 = r8.f5450do
            if (r0 == 0) goto L8d
            r0.mo3280new(r9)
        L8d:
            return r3
        L8e:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "MenuPopupHelper cannot be used without an anchor"
            r9.<init>(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuPresenter.mo3320goto(androidx.appcompat.view.menu.const):boolean");
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m3392if() {
        Object obj;
        Cfor cfor = this.f5610do;
        if (cfor != null && (obj = ((androidx.appcompat.view.menu.Cdo) this).f5452do) != null) {
            ((View) obj).removeCallbacks(cfor);
            this.f5610do = null;
            return true;
        }
        Ctry ctry = this.f5613do;
        if (ctry == null) {
            return false;
        }
        if (ctry.m3359if()) {
            ((Cthis) ctry).f5535do.dismiss();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: new */
    public final void mo3321new(boolean z) {
        int i;
        boolean z2;
        ViewGroup viewGroup = (ViewGroup) ((androidx.appcompat.view.menu.Cdo) this).f5452do;
        ArrayList<Cgoto> arrayList = null;
        boolean z3 = false;
        if (viewGroup != null) {
            androidx.appcompat.view.menu.Ccase ccase = ((androidx.appcompat.view.menu.Cdo) this).f5451do;
            if (ccase != null) {
                ccase.m3344this();
                ArrayList<Cgoto> m3326class = ((androidx.appcompat.view.menu.Cdo) this).f5451do.m3326class();
                int size = m3326class.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    Cgoto cgoto = m3326class.get(i2);
                    if ((cgoto.f5483goto & 32) == 32) {
                        View childAt = viewGroup.getChildAt(i);
                        Cgoto mo3305else = childAt instanceof Ccatch.Cdo ? ((Ccatch.Cdo) childAt).mo3305else() : null;
                        View m3390do = m3390do(cgoto, childAt, viewGroup);
                        if (cgoto != mo3305else) {
                            m3390do.setPressed(false);
                            m3390do.jumpDrawablesToCurrentState();
                        }
                        if (m3390do != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) m3390do.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(m3390do);
                            }
                            ((ViewGroup) ((androidx.appcompat.view.menu.Cdo) this).f5452do).addView(m3390do, i);
                        }
                        i++;
                    }
                }
            } else {
                i = 0;
            }
            while (i < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i) == this.f5612do) {
                    z2 = false;
                } else {
                    viewGroup.removeViewAt(i);
                    z2 = true;
                }
                if (!z2) {
                    i++;
                }
            }
        }
        ((View) ((androidx.appcompat.view.menu.Cdo) this).f5452do).requestLayout();
        androidx.appcompat.view.menu.Ccase ccase2 = ((androidx.appcompat.view.menu.Cdo) this).f5451do;
        if (ccase2 != null) {
            ccase2.m3344this();
            ArrayList<Cgoto> arrayList2 = ccase2.f5414for;
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                H h = arrayList2.get(i3).f5467do;
                if (h != null) {
                    h.setSubUiVisibilityListener(this);
                }
            }
        }
        androidx.appcompat.view.menu.Ccase ccase3 = ((androidx.appcompat.view.menu.Cdo) this).f5451do;
        if (ccase3 != null) {
            ccase3.m3344this();
            arrayList = ccase3.f5419new;
        }
        if (this.f5614do && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z3 = !arrayList.get(0).f5490new;
            } else if (size3 > 0) {
                z3 = true;
            }
        }
        if (z3) {
            if (this.f5612do == null) {
                this.f5612do = new Cnew(((androidx.appcompat.view.menu.Cdo) this).f5448do);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f5612do.getParent();
            if (viewGroup3 != ((androidx.appcompat.view.menu.Cdo) this).f5452do) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.f5612do);
                }
                ActionMenuView actionMenuView = (ActionMenuView) ((androidx.appcompat.view.menu.Cdo) this).f5452do;
                Cnew cnew = this.f5612do;
                actionMenuView.getClass();
                ActionMenuView.LayoutParams layoutParams = new ActionMenuView.LayoutParams();
                ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
                layoutParams.f5642do = true;
                actionMenuView.addView(cnew, layoutParams);
            }
        } else {
            Cnew cnew2 = this.f5612do;
            if (cnew2 != null) {
                Object parent = cnew2.getParent();
                Object obj = ((androidx.appcompat.view.menu.Cdo) this).f5452do;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f5612do);
                }
            }
        }
        ((ActionMenuView) ((androidx.appcompat.view.menu.Cdo) this).f5452do).f5638for = this.f5614do;
    }

    /* renamed from: super, reason: not valid java name */
    public final boolean m3393super() {
        androidx.appcompat.view.menu.Ccase ccase;
        if (!this.f5614do || m3394try() || (ccase = ((androidx.appcompat.view.menu.Cdo) this).f5451do) == null || ((androidx.appcompat.view.menu.Cdo) this).f5452do == null || this.f5610do != null) {
            return false;
        }
        ccase.m3344this();
        if (ccase.f5419new.isEmpty()) {
            return false;
        }
        Cfor cfor = new Cfor(new Ctry(super.f5454if, ((androidx.appcompat.view.menu.Cdo) this).f5451do, this.f5612do));
        this.f5610do = cfor;
        ((View) ((androidx.appcompat.view.menu.Cdo) this).f5452do).post(cfor);
        return true;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: this */
    public final Parcelable mo3322this() {
        SavedState savedState = new SavedState();
        savedState.f5620for = this.f5619this;
        return savedState;
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m3394try() {
        Ctry ctry = this.f5613do;
        return ctry != null && ctry.m3359if();
    }
}
