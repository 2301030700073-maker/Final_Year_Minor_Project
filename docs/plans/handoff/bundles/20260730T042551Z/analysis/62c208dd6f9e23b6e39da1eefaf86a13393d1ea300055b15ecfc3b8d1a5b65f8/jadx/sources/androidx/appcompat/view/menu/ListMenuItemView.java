package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.view.menu.Ccatch;
import com.joeykrim.rootcheck.R;
import defpackage.C3385nL;
import defpackage.C3970xH;
import defpackage.O4;
import defpackage.QK;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements Ccatch.Cdo, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: do, reason: not valid java name */
    public final Context f5382do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Drawable f5383do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LayoutInflater f5384do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CheckBox f5385do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ImageView f5386do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LinearLayout f5387do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RadioButton f5388do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TextView f5389do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cgoto f5390do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5391do;

    /* renamed from: for, reason: not valid java name */
    public final int f5392for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ImageView f5393for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f5394for;

    /* renamed from: if, reason: not valid java name */
    public final Drawable f5395if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ImageView f5396if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public TextView f5397if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f5398if;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listMenuViewStyle);
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f5393for;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f5393for.getLayoutParams();
        rect.top = this.f5393for.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    /* renamed from: do, reason: not valid java name */
    public final LayoutInflater m3315do() {
        if (this.f5384do == null) {
            this.f5384do = LayoutInflater.from(getContext());
        }
        return this.f5384do;
    }

    @Override // androidx.appcompat.view.menu.Ccatch.Cdo
    /* renamed from: else */
    public final Cgoto mo3305else() {
        return this.f5390do;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0228  */
    @Override // androidx.appcompat.view.menu.Ccatch.Cdo
    /* renamed from: if */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo3307if(androidx.appcompat.view.menu.Cgoto r13) {
        /*
            Method dump skipped, instructions count: 586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.ListMenuItemView.mo3307if(androidx.appcompat.view.menu.goto):void");
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        setBackground(this.f5383do);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f5389do = textView;
        int i = this.f5392for;
        if (i != -1) {
            textView.setTextAppearance(this.f5382do, i);
        }
        this.f5397if = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f5396if = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f5395if);
        }
        this.f5393for = (ImageView) findViewById(R.id.group_divider);
        this.f5387do = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        if (this.f5386do != null && this.f5391do) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f5386do.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        C3970xH m8626const = C3970xH.m8626const(getContext(), attributeSet, O4.f2542extends, i);
        this.f5383do = m8626const.m8639try(5);
        this.f5392for = m8626const.m8638this(1, -1);
        this.f5391do = m8626const.m8631do(7, false);
        this.f5382do = context;
        this.f5395if = m8626const.m8639try(8);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.f5398if = obtainStyledAttributes.hasValue(0);
        m8626const.m8633final();
        obtainStyledAttributes.recycle();
    }
}
