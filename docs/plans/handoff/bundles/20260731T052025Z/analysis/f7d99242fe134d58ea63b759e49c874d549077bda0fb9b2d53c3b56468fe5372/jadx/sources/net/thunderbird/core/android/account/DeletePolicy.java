package net.thunderbird.core.android.account;

import com.bumptech.glide.GlideBuilder$1;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DeletePolicy {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ DeletePolicy[] $VALUES;
    public static final GlideBuilder$1 Companion;
    public static final DeletePolicy MARK_AS_READ;
    public static final DeletePolicy NEVER;
    public static final DeletePolicy ON_DELETE;
    public final int setting;

    static {
        DeletePolicy deletePolicy = new DeletePolicy("NEVER", 0, 0);
        NEVER = deletePolicy;
        DeletePolicy deletePolicy2 = new DeletePolicy("SEVEN_DAYS", 1, 1);
        DeletePolicy deletePolicy3 = new DeletePolicy("ON_DELETE", 2, 2);
        ON_DELETE = deletePolicy3;
        DeletePolicy deletePolicy4 = new DeletePolicy("MARK_AS_READ", 3, 3);
        MARK_AS_READ = deletePolicy4;
        DeletePolicy[] deletePolicyArr = {deletePolicy, deletePolicy2, deletePolicy3, deletePolicy4};
        $VALUES = deletePolicyArr;
        $ENTRIES = new EnumEntriesList(deletePolicyArr);
        Companion = new GlideBuilder$1();
    }

    public DeletePolicy(String str, int i, int i2) {
        this.setting = i2;
    }

    public static DeletePolicy valueOf(String str) {
        return (DeletePolicy) Enum.valueOf(DeletePolicy.class, str);
    }

    public static DeletePolicy[] values() {
        return (DeletePolicy[]) $VALUES.clone();
    }
}
