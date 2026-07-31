package org.koin.core.logger;

import android.util.Log;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class EmptyLogger extends Logger {
    public final /* synthetic */ int $r8$classId;

    @Override // org.koin.core.logger.Logger
    public final void display(Level level, String str) {
        switch (this.$r8$classId) {
            case 0:
                break;
            default:
                int ordinal = level.ordinal();
                if (ordinal == 0) {
                    Log.d("[Koin]", str);
                    break;
                } else if (ordinal == 1) {
                    Log.i("[Koin]", str);
                    break;
                } else if (ordinal == 2) {
                    Log.w("[Koin]", str);
                    break;
                } else if (ordinal == 3) {
                    Log.e("[Koin]", str);
                    break;
                } else {
                    Log.e("[Koin]", str);
                    break;
                }
        }
    }

    private final void display$org$koin$core$logger$EmptyLogger(Level level, String str) {
    }
}
