package com.android.launcher3.userevent.nano;

import c.b.b.a1.a;
import c.b.b.a1.b;
import c.b.b.a1.e;

/* loaded from: classes.dex */
public final class LauncherLogExtensions$TargetExtension extends e {
    public int predictedRankFromTensorflow = 0;
    public int smartspaceType = 0;
    public int predictionType = 0;
    public boolean isActionSuggestion = false;
    public boolean isDoNotShow = false;
    public int searchResultSource = 0;

    public LauncherLogExtensions$TargetExtension() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int i = this.predictedRankFromTensorflow;
        int b2 = i != 0 ? 0 + b.b(1, i) : 0;
        int i2 = this.smartspaceType;
        if (i2 != 0) {
            b2 += b.b(2, i2);
        }
        int i3 = this.predictionType;
        if (i3 != 0) {
            b2 += b.b(3, i3);
        }
        boolean z = this.isActionSuggestion;
        if (z) {
            b2 += b.a(4, z);
        }
        boolean z2 = this.isDoNotShow;
        if (z2) {
            b2 += b.a(5, z2);
        }
        int i4 = this.searchResultSource;
        return i4 != 0 ? b2 + b.b(6, i4) : b2;
    }

    @Override // c.b.b.a1.e
    public e mergeFrom(a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 8) {
                this.predictedRankFromTensorflow = aVar.i();
            } else if (k == 16) {
                int i = aVar.i();
                if (i == 0 || i == 1 || i == 2 || i == 3) {
                    this.smartspaceType = i;
                }
            } else if (k == 24) {
                int i2 = aVar.i();
                if (i2 == 0 || i2 == 1) {
                    this.predictionType = i2;
                }
            } else if (k == 32) {
                this.isActionSuggestion = aVar.b();
            } else if (k == 40) {
                this.isDoNotShow = aVar.b();
            } else if (k == 48) {
                int i3 = aVar.i();
                if (i3 == 0 || i3 == 1 || i3 == 2) {
                    this.searchResultSource = i3;
                }
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(b bVar) {
        int i = this.predictedRankFromTensorflow;
        if (i != 0) {
            bVar.m(1, i);
        }
        int i2 = this.smartspaceType;
        if (i2 != 0) {
            bVar.m(2, i2);
        }
        int i3 = this.predictionType;
        if (i3 != 0) {
            bVar.m(3, i3);
        }
        boolean z = this.isActionSuggestion;
        if (z) {
            bVar.k(4, z);
        }
        boolean z2 = this.isDoNotShow;
        if (z2) {
            bVar.k(5, z2);
        }
        int i4 = this.searchResultSource;
        if (i4 != 0) {
            bVar.m(6, i4);
        }
    }
}
