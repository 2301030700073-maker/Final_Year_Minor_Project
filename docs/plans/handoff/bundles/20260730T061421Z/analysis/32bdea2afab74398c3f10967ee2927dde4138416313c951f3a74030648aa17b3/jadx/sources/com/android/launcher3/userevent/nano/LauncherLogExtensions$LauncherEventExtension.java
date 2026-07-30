package com.android.launcher3.userevent.nano;

import c.b.b.a1.a;
import c.b.b.a1.b;
import c.b.b.a1.e;

/* loaded from: classes.dex */
public final class LauncherLogExtensions$LauncherEventExtension extends e {
    public boolean isSwipeUpEnabled = false;
    public LauncherLogExtensions$Settings settings = null;

    public LauncherLogExtensions$LauncherEventExtension() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        boolean z = this.isSwipeUpEnabled;
        int a2 = z ? 0 + b.a(1, z) : 0;
        LauncherLogExtensions$Settings launcherLogExtensions$Settings = this.settings;
        return launcherLogExtensions$Settings != null ? a2 + b.d(2, launcherLogExtensions$Settings) : a2;
    }

    @Override // c.b.b.a1.e
    public e mergeFrom(a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 8) {
                this.isSwipeUpEnabled = aVar.b();
            } else if (k == 18) {
                if (this.settings == null) {
                    this.settings = new LauncherLogExtensions$Settings();
                }
                aVar.d(this.settings);
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(b bVar) {
        boolean z = this.isSwipeUpEnabled;
        if (z) {
            bVar.k(1, z);
        }
        LauncherLogExtensions$Settings launcherLogExtensions$Settings = this.settings;
        if (launcherLogExtensions$Settings != null) {
            bVar.o(2, launcherLogExtensions$Settings);
        }
    }
}
