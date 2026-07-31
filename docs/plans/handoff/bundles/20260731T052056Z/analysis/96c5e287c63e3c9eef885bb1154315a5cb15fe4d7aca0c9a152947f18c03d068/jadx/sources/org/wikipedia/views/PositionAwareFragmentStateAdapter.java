package org.wikipedia.views;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import org.wikipedia.gallery.GalleryActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PositionAwareFragmentStateAdapter extends FragmentStateAdapter {
    public final FragmentManagerImpl fragmentManager;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PositionAwareFragmentStateAdapter(androidx.fragment.app.Fragment r3) {
        /*
            r2 = this;
            androidx.fragment.app.FragmentManagerImpl r0 = r3.getChildFragmentManager()
            androidx.fragment.app.FragmentViewLifecycleOwner r1 = r3.getViewLifecycleOwner()
            r1.initialize$1()
            androidx.lifecycle.LifecycleRegistry r1 = r1.mLifecycleRegistry
            r2.<init>(r0, r1)
            androidx.fragment.app.FragmentManagerImpl r3 = r3.getChildFragmentManager()
            r3.getClass()
            r2.fragmentManager = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.views.PositionAwareFragmentStateAdapter.<init>(androidx.fragment.app.Fragment):void");
    }

    public final Fragment getFragmentAt(int i) {
        return this.fragmentManager.findFragmentByTag("f" + i);
    }

    public PositionAwareFragmentStateAdapter(GalleryActivity galleryActivity) {
        super(galleryActivity.getSupportFragmentManager(), galleryActivity.lifecycleRegistry);
        this.fragmentManager = galleryActivity.getSupportFragmentManager();
    }
}
