package androidx.paging;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RemoteMediator$InitializeAction {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RemoteMediator$InitializeAction[] $VALUES;
    public static final RemoteMediator$InitializeAction LAUNCH_INITIAL_REFRESH;
    public static final RemoteMediator$InitializeAction SKIP_INITIAL_REFRESH;

    static {
        RemoteMediator$InitializeAction remoteMediator$InitializeAction = new RemoteMediator$InitializeAction("LAUNCH_INITIAL_REFRESH", 0);
        LAUNCH_INITIAL_REFRESH = remoteMediator$InitializeAction;
        RemoteMediator$InitializeAction remoteMediator$InitializeAction2 = new RemoteMediator$InitializeAction("SKIP_INITIAL_REFRESH", 1);
        SKIP_INITIAL_REFRESH = remoteMediator$InitializeAction2;
        RemoteMediator$InitializeAction[] remoteMediator$InitializeActionArr = {remoteMediator$InitializeAction, remoteMediator$InitializeAction2};
        $VALUES = remoteMediator$InitializeActionArr;
        $ENTRIES = new EnumEntriesList(remoteMediator$InitializeActionArr);
    }

    public static RemoteMediator$InitializeAction valueOf(String str) {
        return (RemoteMediator$InitializeAction) Enum.valueOf(RemoteMediator$InitializeAction.class, str);
    }

    public static RemoteMediator$InitializeAction[] values() {
        return (RemoteMediator$InitializeAction[]) $VALUES.clone();
    }
}
