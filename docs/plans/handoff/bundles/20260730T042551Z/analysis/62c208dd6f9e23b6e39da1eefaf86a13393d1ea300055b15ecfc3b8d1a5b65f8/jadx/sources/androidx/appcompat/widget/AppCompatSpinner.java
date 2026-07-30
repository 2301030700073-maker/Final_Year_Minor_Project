package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.Cif;
import defpackage.C0822cf;
import defpackage.C3385nL;
import defpackage.C3645ro;
import defpackage.C3836v1;
import defpackage.C3915wL;
import defpackage.InterfaceC0801cH;
import defpackage.QK;
import j$.util.Objects;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class AppCompatSpinner extends Spinner {

    /* renamed from: do, reason: not valid java name */
    @SuppressLint({"ResourceType"})
    public static final int[] f5715do = {R.attr.spinnerMode};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f5716do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f5717do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SpinnerAdapter f5718do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cgoto f5719do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final androidx.appcompat.widget.Cif f5720do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3836v1 f5721do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f5722do;

    /* renamed from: for, reason: not valid java name */
    public int f5723for;

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public boolean f5724do;

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$SavedState$do, reason: invalid class name */
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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f5724do ? (byte) 1 : (byte) 0);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f5724do = parcel.readByte() != 0;
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$case, reason: invalid class name */
    public static class Ccase implements ListAdapter, SpinnerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final ListAdapter f5725do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final SpinnerAdapter f5726do;

        public Ccase(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f5726do = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f5725do = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    Cnew.m3429do((ThemedSpinnerAdapter) spinnerAdapter, theme);
                } else if (spinnerAdapter instanceof InterfaceC0801cH) {
                    InterfaceC0801cH interfaceC0801cH = (InterfaceC0801cH) spinnerAdapter;
                    if (interfaceC0801cH.getDropDownViewTheme() == null) {
                        interfaceC0801cH.m4896do();
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public final boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f5725do;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            SpinnerAdapter spinnerAdapter = this.f5726do;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f5726do;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f5726do;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f5726do;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public final int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public final int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public final boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f5726do;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public final boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public final boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f5725do;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public final void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f5726do;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public final void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f5726do;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$do, reason: invalid class name */
    public class Cdo implements ViewTreeObserver.OnGlobalLayoutListener {
        public Cdo() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            if (!appCompatSpinner.f5719do.mo3423do()) {
                appCompatSpinner.f5719do.mo3416this(Cfor.m3419if(appCompatSpinner), Cfor.m3417do(appCompatSpinner));
            }
            ViewTreeObserver viewTreeObserver = appCompatSpinner.getViewTreeObserver();
            if (viewTreeObserver != null) {
                Cif.m3428do(viewTreeObserver, this);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$else, reason: invalid class name */
    public class Celse extends ListPopupWindow implements Cgoto {

        /* renamed from: break, reason: not valid java name */
        public int f5728break;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public CharSequence f5730do;

        /* renamed from: for, reason: not valid java name */
        public final Rect f5731for;

        /* renamed from: if, reason: not valid java name */
        public ListAdapter f5732if;

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$else$do, reason: invalid class name */
        public class Cdo implements AdapterView.OnItemClickListener {
            public Cdo() {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                Celse celse = Celse.this;
                AppCompatSpinner.this.setSelection(i);
                if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                    AppCompatSpinner.this.performItemClick(view, i, celse.f5732if.getItemId(i));
                }
                celse.dismiss();
            }
        }

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$else$for, reason: invalid class name */
        public class Cfor implements PopupWindow.OnDismissListener {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f5734do;

            public Cfor(Cif cif) {
                this.f5734do = cif;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f5734do);
                }
            }
        }

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$else$if, reason: invalid class name */
        public class Cif implements ViewTreeObserver.OnGlobalLayoutListener {
            public Cif() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                Celse celse = Celse.this;
                AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
                celse.getClass();
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                if (!(appCompatSpinner.isAttachedToWindow() && appCompatSpinner.getGlobalVisibleRect(celse.f5731for))) {
                    celse.dismiss();
                } else {
                    celse.m3414native();
                    celse.mo2368if();
                }
            }
        }

        public Celse(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f5731for = new Rect();
            ((ListPopupWindow) this).f5785do = AppCompatSpinner.this;
            ((ListPopupWindow) this).f5804new = true;
            ((ListPopupWindow) this).f5789do.setFocusable(true);
            ((ListPopupWindow) this).f5786do = new Cdo();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: break, reason: not valid java name */
        public final void mo3411break(CharSequence charSequence) {
            this.f5730do = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: case, reason: not valid java name */
        public final CharSequence mo3412case() {
            return this.f5730do;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: goto, reason: not valid java name */
        public final void mo3413goto(int i) {
            this.f5728break = i;
        }

        /* renamed from: native, reason: not valid java name */
        public final void m3414native() {
            int i;
            Drawable m3447else = m3447else();
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            if (m3447else != null) {
                m3447else.getPadding(appCompatSpinner.f5717do);
                i = C3915wL.m8568do(appCompatSpinner) ? appCompatSpinner.f5717do.right : -appCompatSpinner.f5717do.left;
            } else {
                Rect rect = appCompatSpinner.f5717do;
                rect.right = 0;
                rect.left = 0;
                i = 0;
            }
            int paddingLeft = appCompatSpinner.getPaddingLeft();
            int paddingRight = appCompatSpinner.getPaddingRight();
            int width = appCompatSpinner.getWidth();
            int i2 = appCompatSpinner.f5723for;
            if (i2 == -2) {
                int m3410do = appCompatSpinner.m3410do((SpinnerAdapter) this.f5732if, m3447else());
                int i3 = appCompatSpinner.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = appCompatSpinner.f5717do;
                int i4 = (i3 - rect2.left) - rect2.right;
                if (m3410do > i4) {
                    m3410do = i4;
                }
                m3449import(Math.max(m3410do, (width - paddingLeft) - paddingRight));
            } else if (i2 == -1) {
                m3449import((width - paddingLeft) - paddingRight);
            } else {
                m3449import(i2);
            }
            this.f5806try = C3915wL.m8568do(appCompatSpinner) ? (((width - paddingRight) - ((ListPopupWindow) this).f5803new) - this.f5728break) + i : paddingLeft + this.f5728break + i;
        }

        @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: new, reason: not valid java name */
        public final void mo3415new(ListAdapter listAdapter) {
            super.mo3415new(listAdapter);
            this.f5732if = listAdapter;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: this, reason: not valid java name */
        public final void mo3416this(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean mo2367do = mo2367do();
            m3414native();
            PopupWindow popupWindow = ((ListPopupWindow) this).f5789do;
            popupWindow.setInputMethodMode(2);
            mo2368if();
            C0822cf c0822cf = ((ListPopupWindow) this).f5795do;
            c0822cf.setChoiceMode(1);
            Cfor.m3420new(c0822cf, i);
            Cfor.m3418for(c0822cf, i2);
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            int selectedItemPosition = appCompatSpinner.getSelectedItemPosition();
            C0822cf c0822cf2 = ((ListPopupWindow) this).f5795do;
            if (mo2367do() && c0822cf2 != null) {
                c0822cf2.f8578do = false;
                c0822cf2.setSelection(selectedItemPosition);
                if (c0822cf2.getChoiceMode() != 0) {
                    c0822cf2.setItemChecked(selectedItemPosition, true);
                }
            }
            if (mo2367do || (viewTreeObserver = appCompatSpinner.getViewTreeObserver()) == null) {
                return;
            }
            Cif cif = new Cif();
            viewTreeObserver.addOnGlobalLayoutListener(cif);
            popupWindow.setOnDismissListener(new Cfor(cif));
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$for, reason: invalid class name */
    public static final class Cfor {
        /* renamed from: do, reason: not valid java name */
        public static int m3417do(View view) {
            return view.getTextAlignment();
        }

        /* renamed from: for, reason: not valid java name */
        public static void m3418for(View view, int i) {
            view.setTextAlignment(i);
        }

        /* renamed from: if, reason: not valid java name */
        public static int m3419if(View view) {
            return view.getTextDirection();
        }

        /* renamed from: new, reason: not valid java name */
        public static void m3420new(View view, int i) {
            view.setTextDirection(i);
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$goto, reason: invalid class name */
    public interface Cgoto {
        /* renamed from: break */
        void mo3411break(CharSequence charSequence);

        /* renamed from: case */
        CharSequence mo3412case();

        /* renamed from: catch, reason: not valid java name */
        void mo3421catch(int i);

        /* renamed from: const, reason: not valid java name */
        int mo3422const();

        void dismiss();

        /* renamed from: do, reason: not valid java name */
        boolean mo3423do();

        /* renamed from: else, reason: not valid java name */
        Drawable mo3424else();

        /* renamed from: for, reason: not valid java name */
        int mo3425for();

        /* renamed from: goto */
        void mo3413goto(int i);

        /* renamed from: new */
        void mo3415new(ListAdapter listAdapter);

        /* renamed from: super, reason: not valid java name */
        void mo3426super(Drawable drawable);

        /* renamed from: this */
        void mo3416this(int i, int i2);

        /* renamed from: throw, reason: not valid java name */
        void mo3427throw(int i);
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$if, reason: invalid class name */
    public static final class Cif {
        /* renamed from: do, reason: not valid java name */
        public static void m3428do(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$new, reason: invalid class name */
    public static final class Cnew {
        /* renamed from: do, reason: not valid java name */
        public static void m3429do(ThemedSpinnerAdapter themedSpinnerAdapter, Resources.Theme theme) {
            Resources.Theme dropDownViewTheme;
            dropDownViewTheme = themedSpinnerAdapter.getDropDownViewTheme();
            if (Objects.equals(dropDownViewTheme, theme)) {
                return;
            }
            themedSpinnerAdapter.setDropDownViewTheme(theme);
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatSpinner$try, reason: invalid class name */
    public class Ctry implements Cgoto, DialogInterface.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public ListAdapter f5737do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public androidx.appcompat.app.Cif f5738do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public CharSequence f5740do;

        public Ctry() {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: break */
        public final void mo3411break(CharSequence charSequence) {
            this.f5740do = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: case */
        public final CharSequence mo3412case() {
            return this.f5740do;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: catch */
        public final void mo3421catch(int i) {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: const */
        public final int mo3422const() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        public final void dismiss() {
            androidx.appcompat.app.Cif cif = this.f5738do;
            if (cif != null) {
                cif.dismiss();
                this.f5738do = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: do */
        public final boolean mo3423do() {
            androidx.appcompat.app.Cif cif = this.f5738do;
            if (cif != null) {
                return cif.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: else */
        public final Drawable mo3424else() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: for */
        public final int mo3425for() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: goto */
        public final void mo3413goto(int i) {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: new */
        public final void mo3415new(ListAdapter listAdapter) {
            this.f5737do = listAdapter;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            appCompatSpinner.setSelection(i);
            if (appCompatSpinner.getOnItemClickListener() != null) {
                appCompatSpinner.performItemClick(null, i, this.f5737do.getItemId(i));
            }
            dismiss();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: super */
        public final void mo3426super(Drawable drawable) {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: this */
        public final void mo3416this(int i, int i2) {
            if (this.f5737do == null) {
                return;
            }
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            Cif.Cdo cdo = new Cif.Cdo(appCompatSpinner.getPopupContext());
            CharSequence charSequence = this.f5740do;
            AlertController.Cif cif = cdo.f5350do;
            if (charSequence != null) {
                cif.f5205do = charSequence;
            }
            ListAdapter listAdapter = this.f5737do;
            int selectedItemPosition = appCompatSpinner.getSelectedItemPosition();
            cif.f5204do = listAdapter;
            cif.f5199do = this;
            cif.f5197do = selectedItemPosition;
            cif.f5206do = true;
            androidx.appcompat.app.Cif m3299do = cdo.m3299do();
            this.f5738do = m3299do;
            AlertController.RecycleListView recycleListView = m3299do.f5348do.f5180do;
            Cfor.m3420new(recycleListView, i);
            Cfor.m3418for(recycleListView, i2);
            this.f5738do.show();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.Cgoto
        /* renamed from: throw */
        public final void mo3427throw(int i) {
        }
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.spinnerStyle);
    }

    /* renamed from: do, reason: not valid java name */
    public final int m3410do(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i2 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return i2;
        }
        Rect rect = this.f5717do;
        drawable.getPadding(rect);
        return i2 + rect.left + rect.right;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3836v1 c3836v1 = this.f5721do;
        if (c3836v1 != null) {
            c3836v1.m8414do();
        }
    }

    @Override // android.widget.Spinner
    public final int getDropDownHorizontalOffset() {
        Cgoto cgoto = this.f5719do;
        return cgoto != null ? cgoto.mo3425for() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public final int getDropDownVerticalOffset() {
        Cgoto cgoto = this.f5719do;
        return cgoto != null ? cgoto.mo3422const() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public final int getDropDownWidth() {
        return this.f5719do != null ? this.f5723for : super.getDropDownWidth();
    }

    @Override // android.widget.Spinner
    public final Drawable getPopupBackground() {
        Cgoto cgoto = this.f5719do;
        return cgoto != null ? cgoto.mo3424else() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public final Context getPopupContext() {
        return this.f5716do;
    }

    @Override // android.widget.Spinner
    public final CharSequence getPrompt() {
        Cgoto cgoto = this.f5719do;
        return cgoto != null ? cgoto.mo3412case() : super.getPrompt();
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Cgoto cgoto = this.f5719do;
        if (cgoto == null || !cgoto.mo3423do()) {
            return;
        }
        cgoto.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f5719do == null || View.MeasureSpec.getMode(i) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), m3410do(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.f5724do || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new Cdo());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Cgoto cgoto = this.f5719do;
        savedState.f5724do = cgoto != null && cgoto.mo3423do();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        androidx.appcompat.widget.Cif cif = this.f5720do;
        if (cif == null || !cif.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        Cgoto cgoto = this.f5719do;
        if (cgoto == null) {
            return super.performClick();
        }
        if (cgoto.mo3423do()) {
            return true;
        }
        cgoto.mo3416this(Cfor.m3419if(this), Cfor.m3417do(this));
        return true;
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3836v1 c3836v1 = this.f5721do;
        if (c3836v1 != null) {
            c3836v1.m8421try();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C3836v1 c3836v1 = this.f5721do;
        if (c3836v1 != null) {
            c3836v1.m8413case(i);
        }
    }

    @Override // android.widget.Spinner
    public final void setDropDownHorizontalOffset(int i) {
        Cgoto cgoto = this.f5719do;
        if (cgoto == null) {
            super.setDropDownHorizontalOffset(i);
        } else {
            cgoto.mo3413goto(i);
            cgoto.mo3421catch(i);
        }
    }

    @Override // android.widget.Spinner
    public final void setDropDownVerticalOffset(int i) {
        Cgoto cgoto = this.f5719do;
        if (cgoto != null) {
            cgoto.mo3427throw(i);
        } else {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public final void setDropDownWidth(int i) {
        if (this.f5719do != null) {
            this.f5723for = i;
        } else {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public final void setPopupBackgroundDrawable(Drawable drawable) {
        Cgoto cgoto = this.f5719do;
        if (cgoto != null) {
            cgoto.mo3426super(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public final void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(C3645ro.m7997extends(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public final void setPrompt(CharSequence charSequence) {
        Cgoto cgoto = this.f5719do;
        if (cgoto != null) {
            cgoto.mo3411break(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0051, code lost:
    
        if (r5 == null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatSpinner(android.content.Context r11, android.util.AttributeSet r12, int r13) {
        /*
            r10 = this;
            r10.<init>(r11, r12, r13)
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r10.f5717do = r0
            android.content.Context r0 = r10.getContext()
            defpackage.C0742bH.m4822do(r0, r10)
            int[] r0 = defpackage.O4.f2523abstract
            r1 = 0
            android.content.res.TypedArray r2 = r11.obtainStyledAttributes(r12, r0, r13, r1)
            v1 r3 = new v1
            r3.<init>(r10)
            r10.f5721do = r3
            r3 = 4
            int r3 = r2.getResourceId(r3, r1)
            if (r3 == 0) goto L2e
            Va r4 = new Va
            r4.<init>(r11, r3)
            r10.f5716do = r4
            goto L30
        L2e:
            r10.f5716do = r11
        L30:
            r3 = -1
            r4 = 0
            int[] r5 = androidx.appcompat.widget.AppCompatSpinner.f5715do     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4f
            android.content.res.TypedArray r5 = r11.obtainStyledAttributes(r12, r5, r13, r1)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4f
            boolean r6 = r5.hasValue(r1)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L46
            if (r6 == 0) goto L53
            int r3 = r5.getInt(r1, r1)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L46
            goto L53
        L43:
            r11 = move-exception
            r4 = r5
            goto L49
        L46:
            goto L51
        L48:
            r11 = move-exception
        L49:
            if (r4 == 0) goto L4e
            r4.recycle()
        L4e:
            throw r11
        L4f:
            r5 = r4
        L51:
            if (r5 == 0) goto L56
        L53:
            r5.recycle()
        L56:
            r5 = 2
            r6 = 1
            if (r3 == 0) goto L8e
            if (r3 == r6) goto L5d
            goto L9b
        L5d:
            androidx.appcompat.widget.AppCompatSpinner$else r3 = new androidx.appcompat.widget.AppCompatSpinner$else
            android.content.Context r7 = r10.f5716do
            r3.<init>(r7, r12, r13)
            android.content.Context r7 = r10.f5716do
            xH r0 = defpackage.C3970xH.m8626const(r7, r12, r0, r13)
            android.content.res.TypedArray r7 = r0.f16536do
            r8 = 3
            r9 = -2
            int r7 = r7.getLayoutDimension(r8, r9)
            r10.f5723for = r7
            android.graphics.drawable.Drawable r7 = r0.m8639try(r6)
            r3.m3450super(r7)
            java.lang.String r5 = r2.getString(r5)
            r3.f5730do = r5
            r0.m8633final()
            r10.f5719do = r3
            androidx.appcompat.widget.if r0 = new androidx.appcompat.widget.if
            r0.<init>(r10, r10, r3)
            r10.f5720do = r0
            goto L9b
        L8e:
            androidx.appcompat.widget.AppCompatSpinner$try r0 = new androidx.appcompat.widget.AppCompatSpinner$try
            r0.<init>()
            r10.f5719do = r0
            java.lang.String r3 = r2.getString(r5)
            r0.f5740do = r3
        L9b:
            java.lang.CharSequence[] r0 = r2.getTextArray(r1)
            if (r0 == 0) goto Lb2
            android.widget.ArrayAdapter r1 = new android.widget.ArrayAdapter
            r3 = 17367048(0x1090008, float:2.5162948E-38)
            r1.<init>(r11, r3, r0)
            r11 = 2131427485(0x7f0b009d, float:1.8476588E38)
            r1.setDropDownViewResource(r11)
            r10.setAdapter(r1)
        Lb2:
            r2.recycle()
            r10.f5722do = r6
            android.widget.SpinnerAdapter r11 = r10.f5718do
            if (r11 == 0) goto Lc0
            r10.setAdapter(r11)
            r10.f5718do = r4
        Lc0:
            v1 r11 = r10.f5721do
            r11.m8419new(r12, r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f5722do) {
            this.f5718do = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        Cgoto cgoto = this.f5719do;
        if (cgoto != null) {
            Context context = this.f5716do;
            if (context == null) {
                context = getContext();
            }
            cgoto.mo3415new(new Ccase(spinnerAdapter, context.getTheme()));
        }
    }
}
