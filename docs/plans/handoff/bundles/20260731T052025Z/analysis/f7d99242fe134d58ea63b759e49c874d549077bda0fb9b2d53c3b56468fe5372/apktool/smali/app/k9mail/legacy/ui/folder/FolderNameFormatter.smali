.class public final Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;->resources:Landroid/content/res/Resources;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final displayName(Lnet/thunderbird/feature/mail/folder/api/Folder;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p1, Lnet/thunderbird/feature/mail/folder/api/Folder;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lnet/thunderbird/feature/mail/folder/api/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 4
    .line 5
    iget-boolean p1, p1, Lnet/thunderbird/feature/mail/folder/api/Folder;->isLocalOnly:Z

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    iget-object p0, p0, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;->resources:Landroid/content/res/Resources;

    .line 9
    .line 10
    if-eqz p1, :cond_4

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq p1, v1, :cond_3

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq p1, v1, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    if-eq p1, v1, :cond_1

    .line 24
    .line 25
    if-eq p1, v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const p1, 0x7f120617

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const p1, 0x7f12061b

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const p1, 0x7f12061a

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const p1, 0x7f120619

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_4
    sget-object p1, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    aget p1, p1, v1

    .line 70
    .line 71
    if-ne p1, v2, :cond_5

    .line 72
    .line 73
    const p1, 0x7f120618

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method public final displayName(Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    iget-object v0, p1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 85
    sget-object v1, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 86
    iget-object p0, p0, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;->resources:Landroid/content/res/Resources;

    const p1, 0x7f120618

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 87
    :cond_0
    iget-object p0, p1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->name:Ljava/lang/String;

    .line 88
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
