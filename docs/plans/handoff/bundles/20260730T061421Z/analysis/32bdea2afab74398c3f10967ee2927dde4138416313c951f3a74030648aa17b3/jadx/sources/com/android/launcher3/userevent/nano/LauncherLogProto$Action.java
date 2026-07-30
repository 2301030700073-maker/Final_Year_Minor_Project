package com.android.launcher3.userevent.nano;

import c.b.b.a1.a;
import c.b.b.a1.b;
import c.b.b.a1.e;

/* loaded from: classes.dex */
public final class LauncherLogProto$Action extends e {
    public int type = 0;
    public int touch = 0;
    public int dir = 0;
    public int command = 0;
    public boolean isOutside = false;
    public boolean isStateChange = false;

    public LauncherLogProto$Action() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int i = this.type;
        int b2 = i != 0 ? 0 + b.b(1, i) : 0;
        int i2 = this.touch;
        if (i2 != 0) {
            b2 += b.b(2, i2);
        }
        int i3 = this.dir;
        if (i3 != 0) {
            b2 += b.b(3, i3);
        }
        int i4 = this.command;
        if (i4 != 0) {
            b2 += b.b(4, i4);
        }
        boolean z = this.isOutside;
        if (z) {
            b2 += b.a(5, z);
        }
        boolean z2 = this.isStateChange;
        return z2 ? b2 + b.a(6, z2) : b2;
    }

    @Override // c.b.b.a1.e
    public e mergeFrom(a aVar) {
        while (true) {
            int k = aVar.k();
            if (k != 0) {
                if (k == 8) {
                    int i = aVar.i();
                    if (i == 0 || i == 1 || i == 2 || i == 3 || i == 4) {
                        this.type = i;
                    }
                } else if (k == 16) {
                    int i2 = aVar.i();
                    switch (i2) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            this.touch = i2;
                            break;
                    }
                } else if (k == 24) {
                    int i3 = aVar.i();
                    switch (i3) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            this.dir = i3;
                            break;
                    }
                } else if (k == 32) {
                    int i4 = aVar.i();
                    switch (i4) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                            this.command = i4;
                            break;
                    }
                } else if (k == 40) {
                    this.isOutside = aVar.b();
                } else if (k == 48) {
                    this.isStateChange = aVar.b();
                } else if (!aVar.m(k)) {
                }
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(b bVar) {
        int i = this.type;
        if (i != 0) {
            bVar.m(1, i);
        }
        int i2 = this.touch;
        if (i2 != 0) {
            bVar.m(2, i2);
        }
        int i3 = this.dir;
        if (i3 != 0) {
            bVar.m(3, i3);
        }
        int i4 = this.command;
        if (i4 != 0) {
            bVar.m(4, i4);
        }
        boolean z = this.isOutside;
        if (z) {
            bVar.k(5, z);
        }
        boolean z2 = this.isStateChange;
        if (z2) {
            bVar.k(6, z2);
        }
    }
}
