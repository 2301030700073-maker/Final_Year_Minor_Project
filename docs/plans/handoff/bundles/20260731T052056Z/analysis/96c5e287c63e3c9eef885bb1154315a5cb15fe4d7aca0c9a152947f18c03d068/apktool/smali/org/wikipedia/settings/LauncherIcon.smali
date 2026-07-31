.class public final enum Lorg/wikipedia/settings/LauncherIcon;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/settings/LauncherIcon;

.field public static final enum DEFAULT:Lorg/wikipedia/settings/LauncherIcon;

.field public static final enum YIR25:Lorg/wikipedia/settings/LauncherIcon;


# instance fields
.field private final background:I

.field private final foreground:I

.field private final key:Ljava/lang/String;

.field private final label:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/wikipedia/settings/LauncherIcon;

    .line 2
    .line 3
    const-string v1, "DefaultIcon"

    .line 4
    .line 5
    const v2, 0x7f080228

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, "DEFAULT"

    .line 10
    .line 11
    invoke-direct {v0, v3, v2, v4, v1}, Lorg/wikipedia/settings/LauncherIcon;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/wikipedia/settings/LauncherIcon;->DEFAULT:Lorg/wikipedia/settings/LauncherIcon;

    .line 15
    .line 16
    new-instance v1, Lorg/wikipedia/settings/LauncherIcon;

    .line 17
    .line 18
    const-string v2, "YIR25Icon"

    .line 19
    .line 20
    const v4, 0x7f080229

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    const-string v6, "YIR25"

    .line 25
    .line 26
    invoke-direct {v1, v5, v4, v6, v2}, Lorg/wikipedia/settings/LauncherIcon;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lorg/wikipedia/settings/LauncherIcon;->YIR25:Lorg/wikipedia/settings/LauncherIcon;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    new-array v2, v2, [Lorg/wikipedia/settings/LauncherIcon;

    .line 33
    .line 34
    aput-object v0, v2, v3

    .line 35
    .line 36
    aput-object v1, v2, v5

    .line 37
    .line 38
    sput-object v2, Lorg/wikipedia/settings/LauncherIcon;->$VALUES:[Lorg/wikipedia/settings/LauncherIcon;

    .line 39
    .line 40
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 41
    .line 42
    invoke-direct {v0, v2}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lorg/wikipedia/settings/LauncherIcon;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lorg/wikipedia/settings/LauncherIcon;->key:Ljava/lang/String;

    .line 5
    .line 6
    const p1, 0x7f080227

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lorg/wikipedia/settings/LauncherIcon;->background:I

    .line 10
    .line 11
    iput p2, p0, Lorg/wikipedia/settings/LauncherIcon;->foreground:I

    .line 12
    .line 13
    const p1, 0x7f120084

    .line 14
    .line 15
    .line 16
    iput p1, p0, Lorg/wikipedia/settings/LauncherIcon;->label:I

    .line 17
    .line 18
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/settings/LauncherIcon;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/settings/LauncherIcon;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/settings/LauncherIcon;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/settings/LauncherIcon;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/settings/LauncherIcon;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/settings/LauncherIcon;->$VALUES:[Lorg/wikipedia/settings/LauncherIcon;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/settings/LauncherIcon;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getBackground()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/settings/LauncherIcon;->background:I

    .line 2
    .line 3
    return p0
.end method

.method public final getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lorg/wikipedia/settings/LauncherIcon;->key:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "org.wikipedia."

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v0, p1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final getForeground()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/settings/LauncherIcon;->foreground:I

    .line 2
    .line 3
    return p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/settings/LauncherIcon;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
