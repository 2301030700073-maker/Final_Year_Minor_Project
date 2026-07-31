package org.schabi.newpipe.util.image;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import org.schabi.newpipe.R;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PreferredImageQuality {
    public static final /* synthetic */ PreferredImageQuality[] $VALUES;
    public static final Companion Companion;
    public static final PreferredImageQuality HIGH;
    public static final PreferredImageQuality LOW;
    public static final PreferredImageQuality MEDIUM;
    public static final PreferredImageQuality NONE;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public static PreferredImageQuality fromPreferenceKey(Context context, String str) {
            context.getClass();
            return Intrinsics.areEqual(str, context.getString(R.string.image_quality_none_key)) ? PreferredImageQuality.NONE : Intrinsics.areEqual(str, context.getString(R.string.image_quality_low_key)) ? PreferredImageQuality.LOW : Intrinsics.areEqual(str, context.getString(R.string.image_quality_high_key)) ? PreferredImageQuality.HIGH : PreferredImageQuality.MEDIUM;
        }
    }

    static {
        PreferredImageQuality preferredImageQuality = new PreferredImageQuality("NONE", 0);
        NONE = preferredImageQuality;
        PreferredImageQuality preferredImageQuality2 = new PreferredImageQuality("LOW", 1);
        LOW = preferredImageQuality2;
        PreferredImageQuality preferredImageQuality3 = new PreferredImageQuality("MEDIUM", 2);
        MEDIUM = preferredImageQuality3;
        PreferredImageQuality preferredImageQuality4 = new PreferredImageQuality("HIGH", 3);
        HIGH = preferredImageQuality4;
        $VALUES = new PreferredImageQuality[]{preferredImageQuality, preferredImageQuality2, preferredImageQuality3, preferredImageQuality4};
        Companion = new Companion();
    }

    public static PreferredImageQuality valueOf(String str) {
        return (PreferredImageQuality) Enum.valueOf(PreferredImageQuality.class, str);
    }

    public static PreferredImageQuality[] values() {
        return (PreferredImageQuality[]) $VALUES.clone();
    }
}
