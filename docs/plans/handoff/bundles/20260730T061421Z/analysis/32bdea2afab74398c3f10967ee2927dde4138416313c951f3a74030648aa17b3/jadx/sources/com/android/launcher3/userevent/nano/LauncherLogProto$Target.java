package com.android.launcher3.userevent.nano;

import c.b.b.a1.a;
import c.b.b.a1.b;
import c.b.b.a1.d;
import c.b.b.a1.e;
import com.android.quickstep.interaction.EdgeBackGesturePanel;
import com.android.systemui.shared.recents.ISystemUiProxy;

/* loaded from: classes.dex */
public final class LauncherLogProto$Target extends e {
    public static volatile LauncherLogProto$Target[] _emptyArray;
    public int type = 0;
    public int pageIndex = 0;
    public int rank = 0;
    public int gridX = 0;
    public int gridY = 0;
    public int containerType = 0;
    public int cardinality = 0;
    public int controlType = 0;
    public int itemType = 0;
    public int packageNameHash = 0;
    public int componentHash = 0;
    public int intentHash = 0;
    public int spanX = 1;
    public int spanY = 1;
    public int predictedRank = 0;
    public LauncherLogExtensions$TargetExtension extension = null;
    public int tipType = 0;
    public int searchQueryLength = 0;
    public boolean isWorkApp = false;
    public int fromFolderLabelState = 0;
    public int toFolderLabelState = 0;

    public LauncherLogProto$Target() {
        this.cachedSize = -1;
    }

    public static LauncherLogProto$Target[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (d.f3169b) {
                if (_emptyArray == null) {
                    _emptyArray = new LauncherLogProto$Target[0];
                }
            }
        }
        return _emptyArray;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int i = this.type;
        int b2 = i != 0 ? 0 + b.b(1, i) : 0;
        int i2 = this.pageIndex;
        if (i2 != 0) {
            b2 += b.b(2, i2);
        }
        int i3 = this.rank;
        if (i3 != 0) {
            b2 += b.b(3, i3);
        }
        int i4 = this.gridX;
        if (i4 != 0) {
            b2 += b.b(4, i4);
        }
        int i5 = this.gridY;
        if (i5 != 0) {
            b2 += b.b(5, i5);
        }
        int i6 = this.containerType;
        if (i6 != 0) {
            b2 += b.b(6, i6);
        }
        int i7 = this.cardinality;
        if (i7 != 0) {
            b2 += b.b(7, i7);
        }
        int i8 = this.controlType;
        if (i8 != 0) {
            b2 += b.b(8, i8);
        }
        int i9 = this.itemType;
        if (i9 != 0) {
            b2 += b.b(9, i9);
        }
        int i10 = this.packageNameHash;
        if (i10 != 0) {
            b2 += b.b(10, i10);
        }
        int i11 = this.componentHash;
        if (i11 != 0) {
            b2 += b.b(11, i11);
        }
        int i12 = this.intentHash;
        if (i12 != 0) {
            b2 += b.b(12, i12);
        }
        int i13 = this.spanX;
        if (i13 != 1) {
            b2 += b.b(13, i13);
        }
        int i14 = this.spanY;
        if (i14 != 1) {
            b2 += b.b(14, i14);
        }
        int i15 = this.predictedRank;
        if (i15 != 0) {
            b2 += b.b(15, i15);
        }
        LauncherLogExtensions$TargetExtension launcherLogExtensions$TargetExtension = this.extension;
        if (launcherLogExtensions$TargetExtension != null) {
            b2 += b.d(16, launcherLogExtensions$TargetExtension);
        }
        int i16 = this.tipType;
        if (i16 != 0) {
            b2 += b.b(17, i16);
        }
        int i17 = this.searchQueryLength;
        if (i17 != 0) {
            b2 += b.b(18, i17);
        }
        boolean z = this.isWorkApp;
        if (z) {
            b2 += b.a(19, z);
        }
        int i18 = this.fromFolderLabelState;
        if (i18 != 0) {
            b2 += b.b(20, i18);
        }
        int i19 = this.toFolderLabelState;
        return i19 != 0 ? b2 + b.b(21, i19) : b2;
    }

    @Override // c.b.b.a1.e
    public e mergeFrom(a aVar) {
        while (true) {
            int k = aVar.k();
            switch (k) {
                case 0:
                    break;
                case 8:
                    int i = aVar.i();
                    if (i != 0 && i != 1 && i != 2 && i != 3) {
                        break;
                    } else {
                        this.type = i;
                        break;
                    }
                case 16:
                    this.pageIndex = aVar.i();
                    break;
                case 24:
                    this.rank = aVar.i();
                    break;
                case 32:
                    this.gridX = aVar.i();
                    break;
                case 40:
                    this.gridY = aVar.i();
                    break;
                case 48:
                    int i2 = aVar.i();
                    switch (i2) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                            this.containerType = i2;
                            break;
                    }
                case EdgeBackGesturePanel.ARROW_ANGLE_WHEN_EXTENDED_DEGREES /* 56 */:
                    this.cardinality = aVar.i();
                    break;
                case 64:
                    int i3 = aVar.i();
                    switch (i3) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask /* 26 */:
                        case ISystemUiProxy.Stub.TRANSACTION_handleImageBundleAsScreenshot /* 27 */:
                        case 28:
                            this.controlType = i3;
                            break;
                    }
                case 72:
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
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                            this.itemType = i4;
                            break;
                    }
                case 80:
                    this.packageNameHash = aVar.i();
                    break;
                case 88:
                    this.componentHash = aVar.i();
                    break;
                case 96:
                    this.intentHash = aVar.i();
                    break;
                case 104:
                    this.spanX = aVar.i();
                    break;
                case 112:
                    this.spanY = aVar.i();
                    break;
                case 120:
                    this.predictedRank = aVar.i();
                    break;
                case 130:
                    if (this.extension == null) {
                        this.extension = new LauncherLogExtensions$TargetExtension();
                    }
                    aVar.d(this.extension);
                    break;
                case 136:
                    int i5 = aVar.i();
                    switch (i5) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            this.tipType = i5;
                            break;
                    }
                case 144:
                    this.searchQueryLength = aVar.i();
                    break;
                case 152:
                    this.isWorkApp = aVar.b();
                    break;
                case 160:
                    int i6 = aVar.i();
                    if (i6 != 0 && i6 != 1 && i6 != 2 && i6 != 3) {
                        break;
                    } else {
                        this.fromFolderLabelState = i6;
                        break;
                    }
                case 168:
                    int i7 = aVar.i();
                    switch (i7) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                            this.toFolderLabelState = i7;
                            break;
                    }
                default:
                    if (!aVar.m(k)) {
                        break;
                    } else {
                        break;
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
        int i2 = this.pageIndex;
        if (i2 != 0) {
            bVar.m(2, i2);
        }
        int i3 = this.rank;
        if (i3 != 0) {
            bVar.m(3, i3);
        }
        int i4 = this.gridX;
        if (i4 != 0) {
            bVar.m(4, i4);
        }
        int i5 = this.gridY;
        if (i5 != 0) {
            bVar.m(5, i5);
        }
        int i6 = this.containerType;
        if (i6 != 0) {
            bVar.m(6, i6);
        }
        int i7 = this.cardinality;
        if (i7 != 0) {
            bVar.m(7, i7);
        }
        int i8 = this.controlType;
        if (i8 != 0) {
            bVar.m(8, i8);
        }
        int i9 = this.itemType;
        if (i9 != 0) {
            bVar.m(9, i9);
        }
        int i10 = this.packageNameHash;
        if (i10 != 0) {
            bVar.m(10, i10);
        }
        int i11 = this.componentHash;
        if (i11 != 0) {
            bVar.m(11, i11);
        }
        int i12 = this.intentHash;
        if (i12 != 0) {
            bVar.m(12, i12);
        }
        int i13 = this.spanX;
        if (i13 != 1) {
            bVar.m(13, i13);
        }
        int i14 = this.spanY;
        if (i14 != 1) {
            bVar.m(14, i14);
        }
        int i15 = this.predictedRank;
        if (i15 != 0) {
            bVar.m(15, i15);
        }
        LauncherLogExtensions$TargetExtension launcherLogExtensions$TargetExtension = this.extension;
        if (launcherLogExtensions$TargetExtension != null) {
            bVar.o(16, launcherLogExtensions$TargetExtension);
        }
        int i16 = this.tipType;
        if (i16 != 0) {
            bVar.m(17, i16);
        }
        int i17 = this.searchQueryLength;
        if (i17 != 0) {
            bVar.m(18, i17);
        }
        boolean z = this.isWorkApp;
        if (z) {
            bVar.k(19, z);
        }
        int i18 = this.fromFolderLabelState;
        if (i18 != 0) {
            bVar.m(20, i18);
        }
        int i19 = this.toFolderLabelState;
        if (i19 != 0) {
            bVar.m(21, i19);
        }
    }
}
