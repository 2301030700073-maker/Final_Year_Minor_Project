.class public final Landroidx/glance/text/EmittableText;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/glance/Emittable;


# instance fields
.field public maxLines:I

.field public modifier:Landroidx/glance/GlanceModifier;

.field public style:Landroidx/glance/text/TextStyle;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/glance/text/EmittableText;->text:Ljava/lang/String;

    .line 7
    .line 8
    const v0, 0x7fffffff

    .line 9
    .line 10
    .line 11
    iput v0, p0, Landroidx/glance/text/EmittableText;->maxLines:I

    .line 12
    .line 13
    sget-object v0, Landroidx/glance/GlanceModifier$Companion;->$$INSTANCE:Landroidx/glance/GlanceModifier$Companion;

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/glance/text/EmittableText;->modifier:Landroidx/glance/GlanceModifier;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final copy()Landroidx/glance/Emittable;
    .locals 2

    .line 1
    new-instance v0, Landroidx/glance/text/EmittableText;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/glance/text/EmittableText;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/glance/text/EmittableText;->modifier:Landroidx/glance/GlanceModifier;

    .line 7
    .line 8
    iput-object v1, v0, Landroidx/glance/text/EmittableText;->modifier:Landroidx/glance/GlanceModifier;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/glance/text/EmittableText;->text:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Landroidx/glance/text/EmittableText;->text:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/glance/text/EmittableText;->style:Landroidx/glance/text/TextStyle;

    .line 15
    .line 16
    iput-object v1, v0, Landroidx/glance/text/EmittableText;->style:Landroidx/glance/text/TextStyle;

    .line 17
    .line 18
    iget p0, p0, Landroidx/glance/text/EmittableText;->maxLines:I

    .line 19
    .line 20
    iput p0, v0, Landroidx/glance/text/EmittableText;->maxLines:I

    .line 21
    .line 22
    return-object v0
.end method

.method public final getModifier()Landroidx/glance/GlanceModifier;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/text/EmittableText;->modifier:Landroidx/glance/GlanceModifier;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setModifier(Landroidx/glance/GlanceModifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/glance/text/EmittableText;->modifier:Landroidx/glance/GlanceModifier;

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "EmittableText("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/glance/text/EmittableText;->text:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", style="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/glance/text/EmittableText;->style:Landroidx/glance/text/TextStyle;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", modifier="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/glance/text/EmittableText;->modifier:Landroidx/glance/GlanceModifier;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", maxLines="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget p0, p0, Landroidx/glance/text/EmittableText;->maxLines:I

    .line 39
    .line 40
    const/16 v1, 0x29

    .line 41
    .line 42
    invoke-static {v0, p0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
