package com.google.android.material.button;

import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.PopupMenu;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.datastore.core.Api26Impl;
import androidx.preference.Preference;
import com.fsck.k9.R;
import com.fsck.k9.ui.compose.OnSetImageDrawableListener;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import com.fsck.k9.ui.messageview.MessageViewFragment$messageCryptoMvpView$1;
import com.fsck.k9.ui.settings.account.AccountSettingsFragment;
import com.fsck.k9.view.MessageHeader;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.StartCompoundLayout;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import net.thunderbird.core.android.account.QuoteStyle;
import net.thunderbird.feature.navigation.drawer.dropdown.DropDownDrawer;
import org.jsoup.nodes.CDataNode;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Node;
import org.jsoup.select.NodeVisitor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MaterialButton$$ExternalSyntheticLambda0 implements OnApplyWindowInsetsListener, Preference.OnPreferenceChangeListener, PopupMenu.OnMenuItemClickListener, OnSetImageDrawableListener, CheckableImageButton.OnFocusableChangedListener, NodeVisitor {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ MaterialButton$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // org.jsoup.select.NodeVisitor
    public void head(Node node, int i) {
        StringBuilder sb = (StringBuilder) this.f$0;
        if (node instanceof DataNode) {
            sb.append(((DataNode) node).coreValue());
        } else if (node instanceof Comment) {
            sb.append(((Comment) node).coreValue());
        } else if (node instanceof CDataNode) {
            sb.append(((CDataNode) node).coreValue());
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 1:
                view.getClass();
                Insets insets = windowInsetsCompat.mImpl.getInsets(519);
                insets.getClass();
                int dimensionPixelSize = ((MessageListFragment) obj).getResources().getDimensionPixelSize(R.dimen.floatingActionButtonMargin);
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                if (layoutParams == null) {
                    Regex$$ExternalSyntheticBUOutline0.m("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    return null;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.leftMargin = insets.left + dimensionPixelSize;
                marginLayoutParams.bottomMargin = insets.bottom + dimensionPixelSize;
                marginLayoutParams.rightMargin = dimensionPixelSize + insets.right;
                view.setLayoutParams(marginLayoutParams);
                return WindowInsetsCompat.CONSUMED;
            default:
                view.getClass();
                ((DropDownDrawer) obj).drawerContent.dispatchApplyWindowInsets(windowInsetsCompat.toWindowInsets());
                return windowInsetsCompat;
        }
    }

    @Override // com.google.android.material.internal.CheckableImageButton.OnFocusableChangedListener
    public void onFocusableChanged() {
        StartCompoundLayout startCompoundLayout = (StartCompoundLayout) this.f$0;
        CheckableImageButton checkableImageButton = startCompoundLayout.startIconView;
        Api26Impl.updateIconTooltip(checkableImageButton, startCompoundLayout.startIconOnLongClickListener, checkableImageButton.getContentDescription());
    }

    @Override // androidx.appcompat.widget.PopupMenu.OnMenuItemClickListener
    public void onMenuItemClick(MenuItem menuItem) {
        ((MessageViewFragment$messageCryptoMvpView$1) ((MessageHeader) this.f$0).messageHeaderClickListener).onMenuItemClick(menuItem.getItemId());
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeListener
    public void onPreferenceChange(Preference preference, Object obj) {
        Preference preference2 = (Preference) this.f$0;
        int i = AccountSettingsFragment.$r8$clinit;
        preference2.notifyDependencyChange(QuoteStyle.valueOf(obj.toString()) == QuoteStyle.HEADER);
    }

    @Override // org.jsoup.select.NodeVisitor
    public /* synthetic */ void tail(Node node, int i) {
    }
}
