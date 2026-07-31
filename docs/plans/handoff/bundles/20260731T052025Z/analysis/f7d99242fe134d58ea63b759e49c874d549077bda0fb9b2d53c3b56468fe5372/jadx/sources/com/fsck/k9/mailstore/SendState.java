package com.fsck.k9.mailstore;

import java.util.LinkedHashMap;
import kotlin.UIntArray;
import kotlin.enums.EnumEntriesList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SendState {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ SendState[] $VALUES;
    public static final Companion Companion;
    public static final SendState READY;
    public static final SendState RETRIES_EXCEEDED;
    public final String databaseName;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion implements MessageDate {
        public static final Companion INSTANCE = new Companion();

        public static DatabasePreviewType fromDatabaseValue(String str) {
            Object obj;
            str.getClass();
            EnumEntriesList enumEntriesList = DatabasePreviewType.$ENTRIES;
            enumEntriesList.getClass();
            UIntArray.Iterator iterator = new UIntArray.Iterator(6, enumEntriesList);
            while (true) {
                if (!iterator.hasNext()) {
                    obj = null;
                    break;
                }
                obj = iterator.next();
                if (((DatabasePreviewType) obj).databaseValue.equals(str)) {
                    break;
                }
            }
            DatabasePreviewType databasePreviewType = (DatabasePreviewType) obj;
            if (databasePreviewType != null) {
                return databasePreviewType;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "Unknown database value: ".concat(str));
            return null;
        }

        public static DatabasePreviewType fromPreviewType(int i) {
            Object obj;
            if (i == 0) {
                throw null;
            }
            EnumEntriesList enumEntriesList = DatabasePreviewType.$ENTRIES;
            enumEntriesList.getClass();
            UIntArray.Iterator iterator = new UIntArray.Iterator(6, enumEntriesList);
            while (true) {
                if (!iterator.hasNext()) {
                    obj = null;
                    break;
                }
                obj = iterator.next();
                if (((DatabasePreviewType) obj).previewType == i) {
                    break;
                }
            }
            DatabasePreviewType databasePreviewType = (DatabasePreviewType) obj;
            if (databasePreviewType != null) {
                return databasePreviewType;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "Unknown preview type: ".concat(i != 1 ? i != 2 ? i != 3 ? i != 4 ? "null" : "ERROR" : "ENCRYPTED" : "TEXT" : "NONE"));
            return null;
        }

        public synchronized MessageListCache getCache(String str) {
            Object obj;
            try {
                str.getClass();
                LinkedHashMap linkedHashMap = MessageListCache.instances;
                obj = linkedHashMap.get(str);
                if (obj == null) {
                    obj = new MessageListCache(str);
                    linkedHashMap.put(str, obj);
                }
            } catch (Throwable th) {
                throw th;
            }
            return (MessageListCache) obj;
        }
    }

    static {
        SendState sendState = new SendState(0, "READY", "ready");
        READY = sendState;
        SendState sendState2 = new SendState(1, "RETRIES_EXCEEDED", "retries_exceeded");
        RETRIES_EXCEEDED = sendState2;
        SendState[] sendStateArr = {sendState, sendState2, new SendState(2, "ERROR", "error")};
        $VALUES = sendStateArr;
        $ENTRIES = new EnumEntriesList(sendStateArr);
        Companion = new Companion();
    }

    public SendState(int i, String str, String str2) {
        this.databaseName = str2;
    }

    public static SendState valueOf(String str) {
        return (SendState) Enum.valueOf(SendState.class, str);
    }

    public static SendState[] values() {
        return (SendState[]) $VALUES.clone();
    }
}
