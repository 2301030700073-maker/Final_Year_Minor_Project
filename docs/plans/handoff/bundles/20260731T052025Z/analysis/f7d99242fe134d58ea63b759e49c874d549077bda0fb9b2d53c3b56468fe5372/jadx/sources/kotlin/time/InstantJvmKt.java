package kotlin.time;

import kotlin.internal.jdk8.JDK8PlatformImplementations$ReflectSdkVersion;
import kotlin.time.Instant;
import kotlin.time.InstantKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class InstantJvmKt {
    public static final Clock systemClock;

    static {
        Integer num = JDK8PlatformImplementations$ReflectSdkVersion.sdkVersion;
        final int i = 1;
        final int i2 = 0;
        systemClock = num == null || num.intValue() >= 26 ? new Clock() { // from class: kotlin.internal.jdk8.JDK8PlatformImplementations$getSystemClock$1
            @Override // kotlin.time.Clock
            public final Instant now() {
                switch (i2) {
                    case 0:
                        j$.time.Instant now = j$.time.Instant.now();
                        now.getClass();
                        Instant instant = Instant.MIN;
                        return InstantKt.fromEpochSeconds(now.getNano(), now.getEpochSecond());
                    default:
                        Instant instant2 = Instant.MIN;
                        return InstantKt.fromEpochMilliseconds(System.currentTimeMillis());
                }
            }
        } : new Clock() { // from class: kotlin.internal.jdk8.JDK8PlatformImplementations$getSystemClock$1
            @Override // kotlin.time.Clock
            public final Instant now() {
                switch (i) {
                    case 0:
                        j$.time.Instant now = j$.time.Instant.now();
                        now.getClass();
                        Instant instant = Instant.MIN;
                        return InstantKt.fromEpochSeconds(now.getNano(), now.getEpochSecond());
                    default:
                        Instant instant2 = Instant.MIN;
                        return InstantKt.fromEpochMilliseconds(System.currentTimeMillis());
                }
            }
        };
    }
}
