.class public final synthetic Lorg/wikipedia/views/PlainPasteEditText$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/core/view/OnReceiveContentListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/views/PlainPasteEditText;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/views/PlainPasteEditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/views/PlainPasteEditText$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/views/PlainPasteEditText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .locals 3

    .line 1
    sget v0, Lorg/wikipedia/views/PlainPasteEditText;->$r8$clinit:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p2, Landroidx/core/view/ContentInfoCompat;->mCompat:Landroidx/core/view/ContentInfoCompat$Compat;

    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/core/view/ContentInfoCompat$Compat;->getClip()Landroid/content/ClipData;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    sub-int/2addr v1, v2

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object p0, p0, Lorg/wikipedia/views/PlainPasteEditText$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/views/PlainPasteEditText;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .line 44
    const/16 v1, 0x1f

    .line 45
    .line 46
    if-lt v0, v1, :cond_0

    .line 47
    .line 48
    new-instance p1, Landroidx/compose/ui/scrollcapture/ScrollCapture;

    .line 49
    .line 50
    invoke-direct {p1, p2}, Landroidx/compose/ui/scrollcapture/ScrollCapture;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p2, Landroidx/core/view/ContentInfoCompat$CompatImpl;

    .line 55
    .line 56
    invoke-direct {p2, v2}, Landroidx/core/view/ContentInfoCompat$CompatImpl;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Landroidx/core/view/ContentInfoCompat$Compat;->getClip()Landroid/content/ClipData;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p2, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mClip:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-interface {p1}, Landroidx/core/view/ContentInfoCompat$Compat;->getSource()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p2, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mSource:I

    .line 70
    .line 71
    invoke-interface {p1}, Landroidx/core/view/ContentInfoCompat$Compat;->getFlags()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iput v0, p2, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mFlags:I

    .line 76
    .line 77
    invoke-interface {p1}, Landroidx/core/view/ContentInfoCompat$Compat;->getLinkUri()Landroid/net/Uri;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p2, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mLinkUri:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-interface {p1}, Landroidx/core/view/ContentInfoCompat$Compat;->getExtras()Landroid/os/Bundle;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p2, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mExtras:Ljava/lang/Cloneable;

    .line 88
    .line 89
    move-object p1, p2

    .line 90
    :goto_0
    const/4 p2, 0x0

    .line 91
    invoke-static {p2, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-interface {p1, p0}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->setClip(Landroid/content/ClipData;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->build()Landroidx/core/view/ContentInfoCompat;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method
