package com.android.launcher3.userevent.nano;

import c.b.b.a1.a;
import c.b.b.a1.b;
import c.b.b.a1.e;
import c.b.b.a1.f;

/* loaded from: classes.dex */
public final class LauncherLogProto$LauncherEvent extends e {
    public LauncherLogProto$Action action = null;
    public LauncherLogProto$Target[] srcTarget = LauncherLogProto$Target.emptyArray();
    public LauncherLogProto$Target[] destTarget = LauncherLogProto$Target.emptyArray();
    public long actionDurationMillis = 0;
    public long elapsedContainerMillis = 0;
    public long elapsedSessionMillis = 0;
    public boolean isInMultiWindowMode = false;
    public boolean isInLandscapeMode = false;
    public LauncherLogExtensions$LauncherEventExtension extension = null;

    public LauncherLogProto$LauncherEvent() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        LauncherLogProto$Action launcherLogProto$Action = this.action;
        int i = 0;
        int d2 = launcherLogProto$Action != null ? b.d(1, launcherLogProto$Action) + 0 : 0;
        LauncherLogProto$Target[] launcherLogProto$TargetArr = this.srcTarget;
        if (launcherLogProto$TargetArr != null && launcherLogProto$TargetArr.length > 0) {
            int i2 = 0;
            while (true) {
                LauncherLogProto$Target[] launcherLogProto$TargetArr2 = this.srcTarget;
                if (i2 >= launcherLogProto$TargetArr2.length) {
                    break;
                }
                LauncherLogProto$Target launcherLogProto$Target = launcherLogProto$TargetArr2[i2];
                if (launcherLogProto$Target != null) {
                    d2 += b.d(2, launcherLogProto$Target);
                }
                i2++;
            }
        }
        LauncherLogProto$Target[] launcherLogProto$TargetArr3 = this.destTarget;
        if (launcherLogProto$TargetArr3 != null && launcherLogProto$TargetArr3.length > 0) {
            while (true) {
                LauncherLogProto$Target[] launcherLogProto$TargetArr4 = this.destTarget;
                if (i >= launcherLogProto$TargetArr4.length) {
                    break;
                }
                LauncherLogProto$Target launcherLogProto$Target2 = launcherLogProto$TargetArr4[i];
                if (launcherLogProto$Target2 != null) {
                    d2 += b.d(3, launcherLogProto$Target2);
                }
                i++;
            }
        }
        long j = this.actionDurationMillis;
        if (j != 0) {
            d2 += b.c(4, j);
        }
        long j2 = this.elapsedContainerMillis;
        if (j2 != 0) {
            d2 += b.c(5, j2);
        }
        long j3 = this.elapsedSessionMillis;
        if (j3 != 0) {
            d2 += b.c(6, j3);
        }
        boolean z = this.isInMultiWindowMode;
        if (z) {
            d2 += b.a(7, z);
        }
        boolean z2 = this.isInLandscapeMode;
        if (z2) {
            d2 += b.a(8, z2);
        }
        LauncherLogExtensions$LauncherEventExtension launcherLogExtensions$LauncherEventExtension = this.extension;
        return launcherLogExtensions$LauncherEventExtension != null ? d2 + b.d(9, launcherLogExtensions$LauncherEventExtension) : d2;
    }

    @Override // c.b.b.a1.e
    public e mergeFrom(a aVar) {
        while (true) {
            int k = aVar.k();
            if (k == 0) {
                break;
            }
            if (k == 10) {
                if (this.action == null) {
                    this.action = new LauncherLogProto$Action();
                }
                aVar.d(this.action);
            } else if (k == 18) {
                int a2 = f.a(aVar, 18);
                LauncherLogProto$Target[] launcherLogProto$TargetArr = this.srcTarget;
                int length = launcherLogProto$TargetArr == null ? 0 : launcherLogProto$TargetArr.length;
                int i = a2 + length;
                LauncherLogProto$Target[] launcherLogProto$TargetArr2 = new LauncherLogProto$Target[i];
                if (length != 0) {
                    System.arraycopy(this.srcTarget, 0, launcherLogProto$TargetArr2, 0, length);
                }
                while (length < i - 1) {
                    launcherLogProto$TargetArr2[length] = new LauncherLogProto$Target();
                    aVar.d(launcherLogProto$TargetArr2[length]);
                    aVar.k();
                    length++;
                }
                launcherLogProto$TargetArr2[length] = new LauncherLogProto$Target();
                aVar.d(launcherLogProto$TargetArr2[length]);
                this.srcTarget = launcherLogProto$TargetArr2;
            } else if (k == 26) {
                int a3 = f.a(aVar, 26);
                LauncherLogProto$Target[] launcherLogProto$TargetArr3 = this.destTarget;
                int length2 = launcherLogProto$TargetArr3 == null ? 0 : launcherLogProto$TargetArr3.length;
                int i2 = a3 + length2;
                LauncherLogProto$Target[] launcherLogProto$TargetArr4 = new LauncherLogProto$Target[i2];
                if (length2 != 0) {
                    System.arraycopy(this.destTarget, 0, launcherLogProto$TargetArr4, 0, length2);
                }
                while (length2 < i2 - 1) {
                    launcherLogProto$TargetArr4[length2] = new LauncherLogProto$Target();
                    aVar.d(launcherLogProto$TargetArr4[length2]);
                    aVar.k();
                    length2++;
                }
                launcherLogProto$TargetArr4[length2] = new LauncherLogProto$Target();
                aVar.d(launcherLogProto$TargetArr4[length2]);
                this.destTarget = launcherLogProto$TargetArr4;
            } else if (k == 32) {
                this.actionDurationMillis = aVar.c();
            } else if (k == 40) {
                this.elapsedContainerMillis = aVar.c();
            } else if (k == 48) {
                this.elapsedSessionMillis = aVar.c();
            } else if (k == 56) {
                this.isInMultiWindowMode = aVar.b();
            } else if (k == 64) {
                this.isInLandscapeMode = aVar.b();
            } else if (k == 74) {
                if (this.extension == null) {
                    this.extension = new LauncherLogExtensions$LauncherEventExtension();
                }
                aVar.d(this.extension);
            } else if (!aVar.m(k)) {
                break;
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(b bVar) {
        LauncherLogProto$Action launcherLogProto$Action = this.action;
        if (launcherLogProto$Action != null) {
            bVar.o(1, launcherLogProto$Action);
        }
        LauncherLogProto$Target[] launcherLogProto$TargetArr = this.srcTarget;
        int i = 0;
        if (launcherLogProto$TargetArr != null && launcherLogProto$TargetArr.length > 0) {
            int i2 = 0;
            while (true) {
                LauncherLogProto$Target[] launcherLogProto$TargetArr2 = this.srcTarget;
                if (i2 >= launcherLogProto$TargetArr2.length) {
                    break;
                }
                LauncherLogProto$Target launcherLogProto$Target = launcherLogProto$TargetArr2[i2];
                if (launcherLogProto$Target != null) {
                    bVar.o(2, launcherLogProto$Target);
                }
                i2++;
            }
        }
        LauncherLogProto$Target[] launcherLogProto$TargetArr3 = this.destTarget;
        if (launcherLogProto$TargetArr3 != null && launcherLogProto$TargetArr3.length > 0) {
            while (true) {
                LauncherLogProto$Target[] launcherLogProto$TargetArr4 = this.destTarget;
                if (i >= launcherLogProto$TargetArr4.length) {
                    break;
                }
                LauncherLogProto$Target launcherLogProto$Target2 = launcherLogProto$TargetArr4[i];
                if (launcherLogProto$Target2 != null) {
                    bVar.o(3, launcherLogProto$Target2);
                }
                i++;
            }
        }
        long j = this.actionDurationMillis;
        if (j != 0) {
            bVar.n(4, j);
        }
        long j2 = this.elapsedContainerMillis;
        if (j2 != 0) {
            bVar.n(5, j2);
        }
        long j3 = this.elapsedSessionMillis;
        if (j3 != 0) {
            bVar.n(6, j3);
        }
        boolean z = this.isInMultiWindowMode;
        if (z) {
            bVar.k(7, z);
        }
        boolean z2 = this.isInLandscapeMode;
        if (z2) {
            bVar.k(8, z2);
        }
        LauncherLogExtensions$LauncherEventExtension launcherLogExtensions$LauncherEventExtension = this.extension;
        if (launcherLogExtensions$LauncherEventExtension != null) {
            bVar.o(9, launcherLogExtensions$LauncherEventExtension);
        }
    }
}
