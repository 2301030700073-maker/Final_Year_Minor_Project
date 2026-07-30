package com.google.android.material.textfield;

import android.R;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.ListPopupWindow;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0426Pe;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C2775fs;
import defpackage.C3385nL;
import defpackage.G8;
import defpackage.O2;
import defpackage.QK;
import java.util.List;
import java.util.Locale;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class MaterialAutoCompleteTextView extends AppCompatAutoCompleteTextView {

    /* renamed from: do, reason: not valid java name */
    public final float f11604do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ColorStateList f11605do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f11606do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AccessibilityManager f11607do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ListPopupWindow f11608do;

    /* renamed from: for, reason: not valid java name */
    public final int f11609for;

    /* renamed from: if, reason: not valid java name */
    public final ColorStateList f11610if;

    /* renamed from: com.google.android.material.textfield.MaterialAutoCompleteTextView$do, reason: invalid class name */
    public class Cdo implements AdapterView.OnItemClickListener {
        public Cdo() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            Object item;
            MaterialAutoCompleteTextView materialAutoCompleteTextView = MaterialAutoCompleteTextView.this;
            if (i < 0) {
                ListPopupWindow listPopupWindow = materialAutoCompleteTextView.f11608do;
                item = !listPopupWindow.mo2367do() ? null : listPopupWindow.f5795do.getSelectedItem();
            } else {
                item = materialAutoCompleteTextView.getAdapter().getItem(i);
            }
            MaterialAutoCompleteTextView.m5966do(materialAutoCompleteTextView, item);
            AdapterView.OnItemClickListener onItemClickListener = materialAutoCompleteTextView.getOnItemClickListener();
            ListPopupWindow listPopupWindow2 = materialAutoCompleteTextView.f11608do;
            if (onItemClickListener != null) {
                if (view == null || i < 0) {
                    view = listPopupWindow2.mo2367do() ? listPopupWindow2.f5795do.getSelectedView() : null;
                    i = !listPopupWindow2.mo2367do() ? -1 : listPopupWindow2.f5795do.getSelectedItemPosition();
                    j = !listPopupWindow2.mo2367do() ? Long.MIN_VALUE : listPopupWindow2.f5795do.getSelectedItemId();
                }
                onItemClickListener.onItemClick(listPopupWindow2.f5795do, view, i, j);
            }
            listPopupWindow2.dismiss();
        }
    }

    /* renamed from: com.google.android.material.textfield.MaterialAutoCompleteTextView$if, reason: invalid class name */
    public class Cif<T> extends ArrayAdapter<String> {

        /* renamed from: do, reason: not valid java name */
        public ColorStateList f11612do;

        /* renamed from: if, reason: not valid java name */
        public ColorStateList f11614if;

        public Cif(Context context, int i, String[] strArr) {
            super(context, i, strArr);
            ColorStateList colorStateList;
            ColorStateList colorStateList2 = MaterialAutoCompleteTextView.this.f11610if;
            ColorStateList colorStateList3 = null;
            if (colorStateList2 != null) {
                int[] iArr = {R.attr.state_pressed};
                colorStateList = new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{colorStateList2.getColorForState(iArr, 0), 0});
            } else {
                colorStateList = null;
            }
            this.f11614if = colorStateList;
            if (MaterialAutoCompleteTextView.this.f11609for != 0) {
                ColorStateList colorStateList4 = MaterialAutoCompleteTextView.this.f11610if;
                if (colorStateList4 != null) {
                    int[] iArr2 = {R.attr.state_hovered, -16842919};
                    int[] iArr3 = {R.attr.state_selected, -16842919};
                    int colorForState = colorStateList4.getColorForState(iArr3, 0);
                    int colorForState2 = MaterialAutoCompleteTextView.this.f11610if.getColorForState(iArr2, 0);
                    int i2 = MaterialAutoCompleteTextView.this.f11609for;
                    colorStateList3 = new ColorStateList(new int[][]{iArr3, iArr2, new int[0]}, new int[]{G8.m711new(colorForState, i2), G8.m711new(colorForState2, i2), i2});
                }
            }
            this.f11612do = colorStateList3;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i, view, viewGroup);
            if (view2 instanceof TextView) {
                TextView textView = (TextView) view2;
                MaterialAutoCompleteTextView materialAutoCompleteTextView = MaterialAutoCompleteTextView.this;
                Drawable drawable = null;
                if (materialAutoCompleteTextView.getText().toString().contentEquals(textView.getText())) {
                    if (materialAutoCompleteTextView.f11609for != 0) {
                        ColorDrawable colorDrawable = new ColorDrawable(materialAutoCompleteTextView.f11609for);
                        if (this.f11614if != null) {
                            C0426Pe.Cdo.m1787goto(colorDrawable, this.f11612do);
                            drawable = new RippleDrawable(this.f11614if, colorDrawable, null);
                        } else {
                            drawable = colorDrawable;
                        }
                    }
                }
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                textView.setBackground(drawable);
            }
            return view2;
        }
    }

    public MaterialAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.autoCompleteTextViewStyle);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m5966do(MaterialAutoCompleteTextView materialAutoCompleteTextView, Object obj) {
        materialAutoCompleteTextView.setText(materialAutoCompleteTextView.convertSelectionToString(obj), false);
    }

    @Override // android.widget.AutoCompleteTextView
    public final void dismissDropDown() {
        if (m5967for()) {
            this.f11608do.dismiss();
        } else {
            super.dismissDropDown();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m5967for() {
        boolean z;
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        AccessibilityManager accessibilityManager = this.f11607do;
        if (accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled()) {
            return true;
        }
        if (accessibilityManager != null && accessibilityManager.isEnabled() && (enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(16)) != null) {
            for (AccessibilityServiceInfo accessibilityServiceInfo : enabledAccessibilityServiceList) {
                if (accessibilityServiceInfo.getSettingsActivityName() != null && accessibilityServiceInfo.getSettingsActivityName().contains("SwitchAccess")) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        return z;
    }

    @Override // android.widget.TextView
    public final CharSequence getHint() {
        TextInputLayout m5968if = m5968if();
        return (m5968if == null || !m5968if.f11692try) ? super.getHint() : m5968if.m5984goto();
    }

    /* renamed from: if, reason: not valid java name */
    public final TextInputLayout m5968if() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout m5968if = m5968if();
        if (m5968if != null && m5968if.f11692try && super.getHint() == null) {
            String str = Build.MANUFACTURER;
            if ((str != null ? str.toLowerCase(Locale.ENGLISH) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).equals("meizu")) {
                setHint(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f11608do.dismiss();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            ListAdapter adapter = getAdapter();
            TextInputLayout m5968if = m5968if();
            int i3 = 0;
            if (adapter != null && m5968if != null) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
                ListPopupWindow listPopupWindow = this.f11608do;
                int min = Math.min(adapter.getCount(), Math.max(0, !listPopupWindow.mo2367do() ? -1 : listPopupWindow.f5795do.getSelectedItemPosition()) + 15);
                View view = null;
                int i4 = 0;
                for (int max = Math.max(0, min - 15); max < min; max++) {
                    int itemViewType = adapter.getItemViewType(max);
                    if (itemViewType != i3) {
                        view = null;
                        i3 = itemViewType;
                    }
                    view = adapter.getView(max, view, m5968if);
                    if (view.getLayoutParams() == null) {
                        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    }
                    view.measure(makeMeasureSpec, makeMeasureSpec2);
                    i4 = Math.max(i4, view.getMeasuredWidth());
                }
                Drawable m3447else = listPopupWindow.m3447else();
                if (m3447else != null) {
                    Rect rect = this.f11606do;
                    m3447else.getPadding(rect);
                    i4 += rect.left + rect.right;
                }
                i3 = m5968if.f11644do.f11717if.getMeasuredWidth() + i4;
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, i3), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onWindowFocusChanged(boolean z) {
        if (m5967for()) {
            return;
        }
        super.onWindowFocusChanged(z);
    }

    @Override // android.widget.AutoCompleteTextView
    public final <T extends ListAdapter & Filterable> void setAdapter(T t) {
        super.setAdapter(t);
        this.f11608do.mo3415new(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public final void setDropDownBackgroundDrawable(Drawable drawable) {
        super.setDropDownBackgroundDrawable(drawable);
        ListPopupWindow listPopupWindow = this.f11608do;
        if (listPopupWindow != null) {
            listPopupWindow.m3450super(drawable);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public final void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        super.setOnItemSelectedListener(onItemSelectedListener);
        this.f11608do.f5787do = getOnItemSelectedListener();
    }

    @Override // android.widget.TextView
    public final void setRawInputType(int i) {
        super.setRawInputType(i);
        TextInputLayout m5968if = m5968if();
        if (m5968if != null) {
            m5968if.m5982finally();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public final void showDropDown() {
        if (m5967for()) {
            this.f11608do.mo2368if();
        } else {
            super.showDropDown();
        }
    }

    public MaterialAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, 0), attributeSet, i);
        this.f11606do = new Rect();
        Context context2 = getContext();
        TypedArray m3115new = C0682aH.m3115new(context2, attributeSet, O2.f2478default, i, com.joeykrim.rootcheck.R.style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (m3115new.hasValue(0) && m3115new.getInt(0, 0) == 0) {
            setKeyListener(null);
        }
        int resourceId = m3115new.getResourceId(3, com.joeykrim.rootcheck.R.layout.mtrl_auto_complete_simple_item);
        this.f11604do = m3115new.getDimensionPixelOffset(1, com.joeykrim.rootcheck.R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        if (m3115new.hasValue(2)) {
            this.f11605do = ColorStateList.valueOf(m3115new.getColor(2, 0));
        }
        this.f11609for = m3115new.getColor(4, 0);
        this.f11610if = C0659Zr.m3071if(context2, m3115new, 5);
        this.f11607do = (AccessibilityManager) context2.getSystemService("accessibility");
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2);
        this.f11608do = listPopupWindow;
        listPopupWindow.f5804new = true;
        PopupWindow popupWindow = listPopupWindow.f5789do;
        popupWindow.setFocusable(true);
        listPopupWindow.f5785do = this;
        popupWindow.setInputMethodMode(2);
        listPopupWindow.mo3415new(getAdapter());
        listPopupWindow.f5786do = new Cdo();
        if (m3115new.hasValue(6)) {
            setAdapter(new Cif(getContext(), resourceId, getResources().getStringArray(m3115new.getResourceId(6, 0))));
        }
        m3115new.recycle();
    }
}
