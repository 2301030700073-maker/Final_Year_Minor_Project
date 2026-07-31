package org.jsoup.select;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NodeFilter$FilterResult {
    private static final /* synthetic */ NodeFilter$FilterResult[] $VALUES;
    public static final NodeFilter$FilterResult CONTINUE;
    public static final NodeFilter$FilterResult REMOVE;
    public static final NodeFilter$FilterResult SKIP_CHILDREN;
    public static final NodeFilter$FilterResult SKIP_ENTIRELY;
    public static final NodeFilter$FilterResult STOP;

    static {
        NodeFilter$FilterResult nodeFilter$FilterResult = new NodeFilter$FilterResult("CONTINUE", 0);
        CONTINUE = nodeFilter$FilterResult;
        NodeFilter$FilterResult nodeFilter$FilterResult2 = new NodeFilter$FilterResult("SKIP_CHILDREN", 1);
        SKIP_CHILDREN = nodeFilter$FilterResult2;
        NodeFilter$FilterResult nodeFilter$FilterResult3 = new NodeFilter$FilterResult("SKIP_ENTIRELY", 2);
        SKIP_ENTIRELY = nodeFilter$FilterResult3;
        NodeFilter$FilterResult nodeFilter$FilterResult4 = new NodeFilter$FilterResult("REMOVE", 3);
        REMOVE = nodeFilter$FilterResult4;
        NodeFilter$FilterResult nodeFilter$FilterResult5 = new NodeFilter$FilterResult("STOP", 4);
        STOP = nodeFilter$FilterResult5;
        $VALUES = new NodeFilter$FilterResult[]{nodeFilter$FilterResult, nodeFilter$FilterResult2, nodeFilter$FilterResult3, nodeFilter$FilterResult4, nodeFilter$FilterResult5};
    }

    public static NodeFilter$FilterResult valueOf(String str) {
        return (NodeFilter$FilterResult) Enum.valueOf(NodeFilter$FilterResult.class, str);
    }

    public static NodeFilter$FilterResult[] values() {
        return (NodeFilter$FilterResult[]) $VALUES.clone();
    }
}
