package com.fsck.k9.message;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Attachment {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LoadingState {
        public static final /* synthetic */ LoadingState[] $VALUES;
        public static final LoadingState CANCELLED;
        public static final LoadingState COMPLETE;
        public static final LoadingState METADATA;
        public static final LoadingState URI_ONLY;

        static {
            LoadingState loadingState = new LoadingState("URI_ONLY", 0);
            URI_ONLY = loadingState;
            LoadingState loadingState2 = new LoadingState("METADATA", 1);
            METADATA = loadingState2;
            LoadingState loadingState3 = new LoadingState("COMPLETE", 2);
            COMPLETE = loadingState3;
            LoadingState loadingState4 = new LoadingState("CANCELLED", 3);
            CANCELLED = loadingState4;
            $VALUES = new LoadingState[]{loadingState, loadingState2, loadingState3, loadingState4};
        }

        public static LoadingState valueOf(String str) {
            return (LoadingState) Enum.valueOf(LoadingState.class, str);
        }

        public static LoadingState[] values() {
            return (LoadingState[]) $VALUES.clone();
        }
    }
}
