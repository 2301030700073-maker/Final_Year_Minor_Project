.class public final Lrnauthenticator/authenticator/model/UserExist;
.super Ljava/lang/Object;
.source "UserExist.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrnauthenticator/authenticator/model/UserExist$$serializer;,
        Lrnauthenticator/authenticator/model/UserExist$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000  2\u00020\u0001:\u0002\u001f B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B-\u0008\u0010\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u000cJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\tH\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J%\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0001\u00a2\u0006\u0002\u0008\u001eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000f\u00a8\u0006!"
    }
    d2 = {
        "Lrnauthenticator/authenticator/model/UserExist;",
        "",
        "id",
        "",
        "isEmailVerified",
        "",
        "<init>",
        "(Ljava/lang/String;Z)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getId",
        "()Ljava/lang/String;",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$propertyguru_react_native_authenticator_release",
        "$serializer",
        "Companion",
        "propertyguru_react-native-authenticator_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lrnauthenticator/authenticator/model/UserExist$Companion;


# instance fields
.field private final id:Ljava/lang/String;

.field private final isEmailVerified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrnauthenticator/authenticator/model/UserExist$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrnauthenticator/authenticator/model/UserExist$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lrnauthenticator/authenticator/model/UserExist;->Companion:Lrnauthenticator/authenticator/model/UserExist$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 5
    sget-object p4, Lrnauthenticator/authenticator/model/UserExist$$serializer;->INSTANCE:Lrnauthenticator/authenticator/model/UserExist$$serializer;

    invoke-virtual {p4}, Lrnauthenticator/authenticator/model/UserExist$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrnauthenticator/authenticator/model/UserExist;->id:Ljava/lang/String;

    iput-boolean p3, p0, Lrnauthenticator/authenticator/model/UserExist;->isEmailVerified:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lrnauthenticator/authenticator/model/UserExist;->id:Ljava/lang/String;

    .line 8
    iput-boolean p2, p0, Lrnauthenticator/authenticator/model/UserExist;->isEmailVerified:Z

    return-void
.end method

.method public static synthetic copy$default(Lrnauthenticator/authenticator/model/UserExist;Ljava/lang/String;ZILjava/lang/Object;)Lrnauthenticator/authenticator/model/UserExist;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lrnauthenticator/authenticator/model/UserExist;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lrnauthenticator/authenticator/model/UserExist;->isEmailVerified:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lrnauthenticator/authenticator/model/UserExist;->copy(Ljava/lang/String;Z)Lrnauthenticator/authenticator/model/UserExist;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/model/UserExist;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lrnauthenticator/authenticator/model/UserExist;->id:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x1

    iget-boolean p0, p0, Lrnauthenticator/authenticator/model/UserExist;->isEmailVerified:Z

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lrnauthenticator/authenticator/model/UserExist;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lrnauthenticator/authenticator/model/UserExist;->isEmailVerified:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Z)Lrnauthenticator/authenticator/model/UserExist;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lrnauthenticator/authenticator/model/UserExist;

    invoke-direct {v0, p1, p2}, Lrnauthenticator/authenticator/model/UserExist;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lrnauthenticator/authenticator/model/UserExist;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lrnauthenticator/authenticator/model/UserExist;

    iget-object v1, p0, Lrnauthenticator/authenticator/model/UserExist;->id:Ljava/lang/String;

    iget-object v3, p1, Lrnauthenticator/authenticator/model/UserExist;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lrnauthenticator/authenticator/model/UserExist;->isEmailVerified:Z

    iget-boolean p1, p1, Lrnauthenticator/authenticator/model/UserExist;->isEmailVerified:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lrnauthenticator/authenticator/model/UserExist;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lrnauthenticator/authenticator/model/UserExist;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lrnauthenticator/authenticator/model/UserExist;->isEmailVerified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isEmailVerified()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lrnauthenticator/authenticator/model/UserExist;->isEmailVerified:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lrnauthenticator/authenticator/model/UserExist;->id:Ljava/lang/String;

    iget-boolean v1, p0, Lrnauthenticator/authenticator/model/UserExist;->isEmailVerified:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UserExist(id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isEmailVerified="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
