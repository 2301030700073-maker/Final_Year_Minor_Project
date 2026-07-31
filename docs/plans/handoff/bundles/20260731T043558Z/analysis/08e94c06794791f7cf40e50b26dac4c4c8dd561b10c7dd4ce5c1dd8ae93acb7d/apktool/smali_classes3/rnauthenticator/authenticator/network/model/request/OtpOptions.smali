.class final Lrnauthenticator/authenticator/network/model/request/OtpOptions;
.super Ljava/lang/Object;
.source "OTPAuthenticationData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrnauthenticator/authenticator/network/model/request/OtpOptions$$serializer;,
        Lrnauthenticator/authenticator/network/model/request/OtpOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0083\u0008\u0018\u0000 #2\u00020\u0001:\u0002\"#B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B3\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0007\u0010\u000cJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J%\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0001\u00a2\u0006\u0002\u0008!R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0010\u00a8\u0006$"
    }
    d2 = {
        "Lrnauthenticator/authenticator/network/model/request/OtpOptions;",
        "",
        "length",
        "",
        "ttl",
        "isNumeric",
        "",
        "<init>",
        "(IIZ)V",
        "seen0",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IIIZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getLength",
        "()I",
        "getTtl",
        "()Z",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
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
.field public static final Companion:Lrnauthenticator/authenticator/network/model/request/OtpOptions$Companion;


# instance fields
.field private final isNumeric:Z

.field private final length:I

.field private final ttl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrnauthenticator/authenticator/network/model/request/OtpOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrnauthenticator/authenticator/network/model/request/OtpOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->Companion:Lrnauthenticator/authenticator/network/model/request/OtpOptions$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IIIZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 86
    sget-object p5, Lrnauthenticator/authenticator/network/model/request/OtpOptions$$serializer;->INSTANCE:Lrnauthenticator/authenticator/network/model/request/OtpOptions$$serializer;

    invoke-virtual {p5}, Lrnauthenticator/authenticator/network/model/request/OtpOptions$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->length:I

    iput p3, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->ttl:I

    iput-boolean p4, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->isNumeric:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->length:I

    .line 89
    iput p2, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->ttl:I

    .line 90
    iput-boolean p3, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->isNumeric:Z

    return-void
.end method

.method public static synthetic copy$default(Lrnauthenticator/authenticator/network/model/request/OtpOptions;IIZILjava/lang/Object;)Lrnauthenticator/authenticator/network/model/request/OtpOptions;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->length:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->ttl:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->isNumeric:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->copy(IIZ)Lrnauthenticator/authenticator/network/model/request/OtpOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/network/model/request/OtpOptions;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 86
    iget v1, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->length:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x1

    iget v1, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->ttl:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x2

    iget-boolean p0, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->isNumeric:Z

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->length:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->ttl:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->isNumeric:Z

    return v0
.end method

.method public final copy(IIZ)Lrnauthenticator/authenticator/network/model/request/OtpOptions;
    .locals 1

    new-instance v0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;

    invoke-direct {v0, p1, p2, p3}, Lrnauthenticator/authenticator/network/model/request/OtpOptions;-><init>(IIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lrnauthenticator/authenticator/network/model/request/OtpOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lrnauthenticator/authenticator/network/model/request/OtpOptions;

    iget v1, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->length:I

    iget v3, p1, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->length:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->ttl:I

    iget v3, p1, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->ttl:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->isNumeric:Z

    iget-boolean p1, p1, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->isNumeric:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getLength()I
    .locals 1

    .line 88
    iget v0, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->length:I

    return v0
.end method

.method public final getTtl()I
    .locals 1

    .line 89
    iget v0, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->ttl:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->length:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->ttl:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->isNumeric:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isNumeric()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->isNumeric:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->length:I

    iget v1, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->ttl:I

    iget-boolean v2, p0, Lrnauthenticator/authenticator/network/model/request/OtpOptions;->isNumeric:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OtpOptions(length="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", ttl="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
