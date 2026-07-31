package org.wikipedia.settings;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import androidx.preference.PreferenceFragmentCompat;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/settings/NotificationSettingsFragment;", "Lorg/wikipedia/settings/PreferenceLoaderFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NotificationSettingsFragment extends PreferenceLoaderFragment {
    @Override // org.wikipedia.settings.PreferenceLoader
    public final void loadPreferences() {
        new SettingsPreferenceLoader(this, 1).loadPreferences();
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        Context requireContext = requireContext();
        Context requireContext2 = requireContext();
        TypedValue typedValue = new TypedValue();
        if (!requireContext2.getTheme().resolveAttribute(R.attr.list_divider, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969500");
            return;
        }
        Drawable drawable = TuplesKt.getDrawable(requireContext, typedValue.resourceId);
        PreferenceFragmentCompat.DividerDecoration dividerDecoration = this.mDividerDecoration;
        if (drawable != null) {
            dividerDecoration.getClass();
            dividerDecoration.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            dividerDecoration.mDividerHeight = 0;
        }
        dividerDecoration.mDivider = drawable;
        RecyclerView recyclerView = PreferenceFragmentCompat.this.mList;
        if (recyclerView.mItemDecorations.size() == 0) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
        if (layoutManager != null) {
            layoutManager.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
        }
        recyclerView.markItemDecorInsetsDirty();
        recyclerView.requestLayout();
    }
}
