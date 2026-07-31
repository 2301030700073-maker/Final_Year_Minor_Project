package okhttp3.internal.http2;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ErrorCode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ErrorCode[] $VALUES;
    public static final ErrorCode CANCEL;
    public static final ErrorCode COMPRESSION_ERROR;
    public static final ErrorCode CONNECT_ERROR;
    public static final Companion Companion;
    public static final ErrorCode ENHANCE_YOUR_CALM;
    public static final ErrorCode FLOW_CONTROL_ERROR;
    public static final ErrorCode FRAME_SIZE_ERROR;
    public static final ErrorCode HTTP_1_1_REQUIRED;
    public static final ErrorCode INADEQUATE_SECURITY;
    public static final ErrorCode INTERNAL_ERROR;
    public static final ErrorCode NO_ERROR;
    public static final ErrorCode PROTOCOL_ERROR;
    public static final ErrorCode REFUSED_STREAM;
    public static final ErrorCode SETTINGS_TIMEOUT;
    public static final ErrorCode STREAM_CLOSED;
    private final int httpCode;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
    }

    static {
        ErrorCode errorCode = new ErrorCode("NO_ERROR", 0, 0);
        NO_ERROR = errorCode;
        ErrorCode errorCode2 = new ErrorCode("PROTOCOL_ERROR", 1, 1);
        PROTOCOL_ERROR = errorCode2;
        ErrorCode errorCode3 = new ErrorCode("INTERNAL_ERROR", 2, 2);
        INTERNAL_ERROR = errorCode3;
        ErrorCode errorCode4 = new ErrorCode("FLOW_CONTROL_ERROR", 3, 3);
        FLOW_CONTROL_ERROR = errorCode4;
        ErrorCode errorCode5 = new ErrorCode("SETTINGS_TIMEOUT", 4, 4);
        SETTINGS_TIMEOUT = errorCode5;
        ErrorCode errorCode6 = new ErrorCode("STREAM_CLOSED", 5, 5);
        STREAM_CLOSED = errorCode6;
        ErrorCode errorCode7 = new ErrorCode("FRAME_SIZE_ERROR", 6, 6);
        FRAME_SIZE_ERROR = errorCode7;
        ErrorCode errorCode8 = new ErrorCode("REFUSED_STREAM", 7, 7);
        REFUSED_STREAM = errorCode8;
        ErrorCode errorCode9 = new ErrorCode("CANCEL", 8, 8);
        CANCEL = errorCode9;
        ErrorCode errorCode10 = new ErrorCode("COMPRESSION_ERROR", 9, 9);
        COMPRESSION_ERROR = errorCode10;
        ErrorCode errorCode11 = new ErrorCode("CONNECT_ERROR", 10, 10);
        CONNECT_ERROR = errorCode11;
        ErrorCode errorCode12 = new ErrorCode("ENHANCE_YOUR_CALM", 11, 11);
        ENHANCE_YOUR_CALM = errorCode12;
        ErrorCode errorCode13 = new ErrorCode("INADEQUATE_SECURITY", 12, 12);
        INADEQUATE_SECURITY = errorCode13;
        ErrorCode errorCode14 = new ErrorCode("HTTP_1_1_REQUIRED", 13, 13);
        HTTP_1_1_REQUIRED = errorCode14;
        ErrorCode[] errorCodeArr = {errorCode, errorCode2, errorCode3, errorCode4, errorCode5, errorCode6, errorCode7, errorCode8, errorCode9, errorCode10, errorCode11, errorCode12, errorCode13, errorCode14};
        $VALUES = errorCodeArr;
        $ENTRIES = new EnumEntriesList(errorCodeArr);
        Companion = new Companion();
    }

    public ErrorCode(String str, int i, int i2) {
        this.httpCode = i2;
    }

    public static ErrorCode valueOf(String str) {
        return (ErrorCode) Enum.valueOf(ErrorCode.class, str);
    }

    public static ErrorCode[] values() {
        return (ErrorCode[]) $VALUES.clone();
    }

    public final int getHttpCode() {
        return this.httpCode;
    }
}
