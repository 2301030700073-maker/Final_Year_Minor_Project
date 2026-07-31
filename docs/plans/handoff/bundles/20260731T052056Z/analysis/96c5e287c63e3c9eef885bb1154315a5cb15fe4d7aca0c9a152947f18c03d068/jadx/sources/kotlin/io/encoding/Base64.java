package kotlin.io.encoding;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Base64 {
    public static final Default Default;
    public final boolean isMimeScheme;
    public final boolean isUrlSafe;
    public final PaddingOption paddingOption;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Default extends Base64 {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PaddingOption {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PaddingOption[] $VALUES;
        public static final PaddingOption ABSENT;
        public static final PaddingOption ABSENT_OPTIONAL;
        public static final PaddingOption PRESENT;
        public static final PaddingOption PRESENT_OPTIONAL;

        static {
            PaddingOption paddingOption = new PaddingOption("PRESENT", 0);
            PRESENT = paddingOption;
            PaddingOption paddingOption2 = new PaddingOption("ABSENT", 1);
            ABSENT = paddingOption2;
            PaddingOption paddingOption3 = new PaddingOption("PRESENT_OPTIONAL", 2);
            PRESENT_OPTIONAL = paddingOption3;
            PaddingOption paddingOption4 = new PaddingOption("ABSENT_OPTIONAL", 3);
            ABSENT_OPTIONAL = paddingOption4;
            PaddingOption[] paddingOptionArr = {paddingOption, paddingOption2, paddingOption3, paddingOption4};
            $VALUES = paddingOptionArr;
            $ENTRIES = new EnumEntriesList(paddingOptionArr);
        }

        public static PaddingOption valueOf(String str) {
            return (PaddingOption) Enum.valueOf(PaddingOption.class, str);
        }

        public static PaddingOption[] values() {
            return (PaddingOption[]) $VALUES.clone();
        }
    }

    static {
        PaddingOption paddingOption = PaddingOption.PRESENT;
        Default = new Default(false, false, -1, paddingOption);
        new Base64(true, false, -1, paddingOption);
        new Base64(false, true, 76, paddingOption);
        new Base64(false, true, 64, paddingOption);
    }

    public Base64(boolean z, boolean z2, int i, PaddingOption paddingOption) {
        this.isUrlSafe = z;
        this.isMimeScheme = z2;
        this.paddingOption = paddingOption;
        if (z && z2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
            throw null;
        }
    }
}
