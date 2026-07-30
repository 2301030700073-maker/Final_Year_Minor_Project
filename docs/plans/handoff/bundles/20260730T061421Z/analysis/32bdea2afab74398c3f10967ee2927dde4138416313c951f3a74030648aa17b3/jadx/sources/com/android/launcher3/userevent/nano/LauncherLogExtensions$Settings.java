package com.android.launcher3.userevent.nano;

import c.b.b.a1.a;
import c.b.b.a1.b;
import c.b.b.a1.e;
import com.android.quickstep.interaction.EdgeBackGesturePanel;

/* loaded from: classes.dex */
public final class LauncherLogExtensions$Settings extends e {
    public int userInitiatedChange = 0;
    public boolean isSwipeUpEnabled = false;
    public boolean isAppSuggestionEnabled = false;
    public boolean isActionSuggestionEnabled = false;
    public boolean isOverviewSelectionEnabled = false;
    public boolean isRotationEnabled = false;
    public boolean isGoogleAppEnabled = false;
    public boolean isNotificationDotsEnabled = false;
    public boolean isIconToHomeEnabled = false;
    public int navBarInteractionMode = 0;

    public LauncherLogExtensions$Settings() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int i = this.userInitiatedChange;
        int b2 = i != 0 ? 0 + b.b(1, i) : 0;
        boolean z = this.isSwipeUpEnabled;
        if (z) {
            b2 += b.a(2, z);
        }
        boolean z2 = this.isAppSuggestionEnabled;
        if (z2) {
            b2 += b.a(3, z2);
        }
        boolean z3 = this.isActionSuggestionEnabled;
        if (z3) {
            b2 += b.a(4, z3);
        }
        boolean z4 = this.isOverviewSelectionEnabled;
        if (z4) {
            b2 += b.a(5, z4);
        }
        boolean z5 = this.isRotationEnabled;
        if (z5) {
            b2 += b.a(6, z5);
        }
        boolean z6 = this.isGoogleAppEnabled;
        if (z6) {
            b2 += b.a(7, z6);
        }
        boolean z7 = this.isNotificationDotsEnabled;
        if (z7) {
            b2 += b.a(8, z7);
        }
        boolean z8 = this.isIconToHomeEnabled;
        if (z8) {
            b2 += b.a(9, z8);
        }
        int i2 = this.navBarInteractionMode;
        return i2 != 0 ? b2 + b.b(10, i2) : b2;
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
                    switch (i) {
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
                            this.userInitiatedChange = i;
                            break;
                    }
                case 16:
                    this.isSwipeUpEnabled = aVar.b();
                    break;
                case 24:
                    this.isAppSuggestionEnabled = aVar.b();
                    break;
                case 32:
                    this.isActionSuggestionEnabled = aVar.b();
                    break;
                case 40:
                    this.isOverviewSelectionEnabled = aVar.b();
                    break;
                case 48:
                    this.isRotationEnabled = aVar.b();
                    break;
                case EdgeBackGesturePanel.ARROW_ANGLE_WHEN_EXTENDED_DEGREES /* 56 */:
                    this.isGoogleAppEnabled = aVar.b();
                    break;
                case 64:
                    this.isNotificationDotsEnabled = aVar.b();
                    break;
                case 72:
                    this.isIconToHomeEnabled = aVar.b();
                    break;
                case 80:
                    this.navBarInteractionMode = aVar.i();
                    break;
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
        int i = this.userInitiatedChange;
        if (i != 0) {
            bVar.m(1, i);
        }
        boolean z = this.isSwipeUpEnabled;
        if (z) {
            bVar.k(2, z);
        }
        boolean z2 = this.isAppSuggestionEnabled;
        if (z2) {
            bVar.k(3, z2);
        }
        boolean z3 = this.isActionSuggestionEnabled;
        if (z3) {
            bVar.k(4, z3);
        }
        boolean z4 = this.isOverviewSelectionEnabled;
        if (z4) {
            bVar.k(5, z4);
        }
        boolean z5 = this.isRotationEnabled;
        if (z5) {
            bVar.k(6, z5);
        }
        boolean z6 = this.isGoogleAppEnabled;
        if (z6) {
            bVar.k(7, z6);
        }
        boolean z7 = this.isNotificationDotsEnabled;
        if (z7) {
            bVar.k(8, z7);
        }
        boolean z8 = this.isIconToHomeEnabled;
        if (z8) {
            bVar.k(9, z8);
        }
        int i2 = this.navBarInteractionMode;
        if (i2 != 0) {
            bVar.m(10, i2);
        }
    }
}
