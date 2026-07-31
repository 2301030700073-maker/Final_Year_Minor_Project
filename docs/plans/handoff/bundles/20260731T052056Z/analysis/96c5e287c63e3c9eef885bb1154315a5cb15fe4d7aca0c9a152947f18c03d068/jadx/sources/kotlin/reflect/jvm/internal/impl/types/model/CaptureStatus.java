package kotlin.reflect.jvm.internal.impl.types.model;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CaptureStatus {
    private static final /* synthetic */ CaptureStatus[] $VALUES;
    public static final CaptureStatus FOR_INCORPORATION;
    public static final CaptureStatus FOR_SUBTYPING;
    public static final CaptureStatus FROM_EXPRESSION;

    static {
        CaptureStatus captureStatus = new CaptureStatus("FOR_SUBTYPING", 0);
        FOR_SUBTYPING = captureStatus;
        CaptureStatus captureStatus2 = new CaptureStatus("FOR_INCORPORATION", 1);
        FOR_INCORPORATION = captureStatus2;
        CaptureStatus captureStatus3 = new CaptureStatus("FROM_EXPRESSION", 2);
        FROM_EXPRESSION = captureStatus3;
        $VALUES = new CaptureStatus[]{captureStatus, captureStatus2, captureStatus3};
    }

    public static CaptureStatus valueOf(String str) {
        return (CaptureStatus) Enum.valueOf(CaptureStatus.class, str);
    }

    public static CaptureStatus[] values() {
        return (CaptureStatus[]) $VALUES.clone();
    }
}
