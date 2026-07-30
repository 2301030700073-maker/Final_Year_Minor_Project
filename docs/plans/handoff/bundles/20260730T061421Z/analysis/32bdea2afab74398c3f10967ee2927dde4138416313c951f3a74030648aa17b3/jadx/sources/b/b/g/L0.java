package b.b.g;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import androidx.appcompat.widget.SearchView;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class L0 implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchView f466a;

    public L0(SearchView searchView) {
        this.f466a = searchView;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        SearchView searchView = this.f466a;
        if (searchView.x.getWidth() > 1) {
            Resources resources = searchView.getContext().getResources();
            int paddingLeft = searchView.r.getPaddingLeft();
            Rect rect = new Rect();
            boolean b2 = m1.b(searchView);
            int dimensionPixelSize = searchView.J ? resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width) : 0;
            searchView.p.getDropDownBackground().getPadding(rect);
            searchView.p.setDropDownHorizontalOffset(b2 ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            searchView.p.setDropDownWidth((((searchView.x.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }
}
