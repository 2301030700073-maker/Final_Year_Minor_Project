package org.wikipedia.navtab;

import androidx.fragment.app.Fragment;
import kotlin.collections.AbstractCollection;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.views.PositionAwareFragmentStateAdapter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavTabFragmentPagerAdapter extends PositionAwareFragmentStateAdapter {
    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public final Fragment createFragment(int i) {
        NavTab.Companion.getClass();
        return NavTab.Companion.of(i).newInstance();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return ((AbstractCollection) NavTab.getEntries()).getSize();
    }
}
