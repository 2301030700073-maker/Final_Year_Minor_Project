.class public abstract Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field public final name:Ljava/lang/String;

.field public final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->LOGGER:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->priority:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;

    .line 2
    .line 3
    iget p0, p0, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->priority:I

    .line 4
    .line 5
    iget p1, p1, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->priority:I

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public abstract getDnsServerAddresses()Ljava/util/List;
.end method

.method public abstract isAvailable()Z
.end method
