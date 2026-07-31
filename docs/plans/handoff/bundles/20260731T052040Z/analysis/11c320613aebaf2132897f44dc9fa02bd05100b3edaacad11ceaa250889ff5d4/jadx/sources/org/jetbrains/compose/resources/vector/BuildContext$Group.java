package org.jetbrains.compose.resources.vector;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BuildContext$Group {
    public static final /* synthetic */ BuildContext$Group[] $VALUES;
    public static final BuildContext$Group Real;
    public static final BuildContext$Group Virtual;

    static {
        BuildContext$Group buildContext$Group = new BuildContext$Group("Real", 0);
        Real = buildContext$Group;
        BuildContext$Group buildContext$Group2 = new BuildContext$Group("Virtual", 1);
        Virtual = buildContext$Group2;
        $VALUES = new BuildContext$Group[]{buildContext$Group, buildContext$Group2};
    }

    public static BuildContext$Group valueOf(String str) {
        return (BuildContext$Group) Enum.valueOf(BuildContext$Group.class, str);
    }

    public static BuildContext$Group[] values() {
        return (BuildContext$Group[]) $VALUES.clone();
    }
}
