package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import b.b.b;
import b.b.f.m.D;
import b.b.f.m.r;
import b.b.g.a1;
import b.e.i.q;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.Objects;

/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements D, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: a, reason: collision with root package name */
    public r f35a;

    /* renamed from: b, reason: collision with root package name */
    public ImageView f36b;

    /* renamed from: c, reason: collision with root package name */
    public RadioButton f37c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f38d;
    public CheckBox e;
    public TextView f;
    public ImageView g;
    public ImageView h;
    public LinearLayout i;
    public Drawable j;
    public int k;
    public Context l;
    public boolean m;
    public Drawable n;
    public boolean o;
    public LayoutInflater p;
    public boolean q;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listMenuViewStyle);
    }

    public final LayoutInflater a() {
        if (this.p == null) {
            this.p = LayoutInflater.from(getContext());
        }
        return this.p;
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.h.getLayoutParams();
        rect.top = this.h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    @Override // b.b.f.m.D
    public r b() {
        return this.f35a;
    }

    public void c(boolean z) {
        String sb;
        int i = (z && this.f35a.m()) ? 0 : 8;
        if (i == 0) {
            TextView textView = this.f;
            r rVar = this.f35a;
            char e = rVar.e();
            if (e == 0) {
                sb = "";
            } else {
                Resources resources = rVar.n.f400a.getResources();
                StringBuilder sb2 = new StringBuilder();
                if (ViewConfiguration.get(rVar.n.f400a).hasPermanentMenuKey()) {
                    sb2.append(resources.getString(R.string.abc_prepend_shortcut_label));
                }
                int i2 = rVar.n.n() ? rVar.k : rVar.i;
                r.c(sb2, i2, 65536, resources.getString(R.string.abc_menu_meta_shortcut_label));
                r.c(sb2, i2, QuickStepContract.SYSUI_STATE_TRACING_ENABLED, resources.getString(R.string.abc_menu_ctrl_shortcut_label));
                r.c(sb2, i2, 2, resources.getString(R.string.abc_menu_alt_shortcut_label));
                r.c(sb2, i2, 1, resources.getString(R.string.abc_menu_shift_shortcut_label));
                r.c(sb2, i2, 4, resources.getString(R.string.abc_menu_sym_shortcut_label));
                r.c(sb2, i2, 8, resources.getString(R.string.abc_menu_function_shortcut_label));
                if (e == '\b') {
                    sb2.append(resources.getString(R.string.abc_menu_delete_shortcut_label));
                } else if (e == '\n') {
                    sb2.append(resources.getString(R.string.abc_menu_enter_shortcut_label));
                } else if (e != ' ') {
                    sb2.append(e);
                } else {
                    sb2.append(resources.getString(R.string.abc_menu_space_shortcut_label));
                }
                sb = sb2.toString();
            }
            textView.setText(sb);
        }
        if (this.f.getVisibility() != i) {
            this.f.setVisibility(i);
        }
    }

    @Override // b.b.f.m.D
    public boolean d() {
        return false;
    }

    @Override // b.b.f.m.D
    public void e(r rVar, int i) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        this.f35a = rVar;
        setVisibility(rVar.isVisible() ? 0 : 8);
        CharSequence titleCondensed = d() ? rVar.getTitleCondensed() : rVar.e;
        if (titleCondensed != null) {
            this.f38d.setText(titleCondensed);
            if (this.f38d.getVisibility() != 0) {
                this.f38d.setVisibility(0);
            }
        } else if (this.f38d.getVisibility() != 8) {
            this.f38d.setVisibility(8);
        }
        boolean isCheckable = rVar.isCheckable();
        if (isCheckable || this.f37c != null || this.e != null) {
            if ((this.f35a.x & 4) != 0) {
                if (this.f37c == null) {
                    RadioButton radioButton = (RadioButton) a().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                    this.f37c = radioButton;
                    LinearLayout linearLayout = this.i;
                    if (linearLayout != null) {
                        linearLayout.addView(radioButton, -1);
                    } else {
                        addView(radioButton, -1);
                    }
                }
                compoundButton = this.f37c;
                compoundButton2 = this.e;
            } else {
                if (this.e == null) {
                    CheckBox checkBox = (CheckBox) a().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                    this.e = checkBox;
                    LinearLayout linearLayout2 = this.i;
                    if (linearLayout2 != null) {
                        linearLayout2.addView(checkBox, -1);
                    } else {
                        addView(checkBox, -1);
                    }
                }
                compoundButton = this.e;
                compoundButton2 = this.f37c;
            }
            if (isCheckable) {
                compoundButton.setChecked(this.f35a.isChecked());
                if (compoundButton.getVisibility() != 0) {
                    compoundButton.setVisibility(0);
                }
                if (compoundButton2 != null && compoundButton2.getVisibility() != 8) {
                    compoundButton2.setVisibility(8);
                }
            } else {
                CheckBox checkBox2 = this.e;
                if (checkBox2 != null) {
                    checkBox2.setVisibility(8);
                }
                RadioButton radioButton2 = this.f37c;
                if (radioButton2 != null) {
                    radioButton2.setVisibility(8);
                }
            }
        }
        boolean m = rVar.m();
        rVar.e();
        c(m);
        Drawable icon = rVar.getIcon();
        Objects.requireNonNull(this.f35a.n);
        boolean z = this.q;
        if ((z || this.m) && (this.f36b != null || icon != null || this.m)) {
            if (this.f36b == null) {
                ImageView imageView = (ImageView) a().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.f36b = imageView;
                LinearLayout linearLayout3 = this.i;
                if (linearLayout3 != null) {
                    linearLayout3.addView(imageView, 0);
                } else {
                    addView(imageView, 0);
                }
            }
            if (icon != null || this.m) {
                ImageView imageView2 = this.f36b;
                if (!z) {
                    icon = null;
                }
                imageView2.setImageDrawable(icon);
                if (this.f36b.getVisibility() != 0) {
                    this.f36b.setVisibility(0);
                }
            } else {
                this.f36b.setVisibility(8);
            }
        }
        setEnabled(rVar.isEnabled());
        boolean hasSubMenu = rVar.hasSubMenu();
        ImageView imageView3 = this.g;
        if (imageView3 != null) {
            imageView3.setVisibility(hasSubMenu ? 0 : 8);
        }
        setContentDescription(rVar.q);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        q.E(this, this.j);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f38d = textView;
        int i = this.k;
        if (i != -1) {
            textView.setTextAppearance(this.l, i);
        }
        this.f = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.n);
        }
        this.h = (ImageView) findViewById(R.id.group_divider);
        this.i = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f36b != null && this.m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f36b.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        a1 o = a1.o(getContext(), attributeSet, b.r, i, 0);
        this.j = o.e(5);
        this.k = o.j(1, -1);
        this.m = o.a(7, false);
        this.l = context;
        this.n = o.e(8);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.o = obtainStyledAttributes.hasValue(0);
        o.f513b.recycle();
        obtainStyledAttributes.recycle();
    }
}
