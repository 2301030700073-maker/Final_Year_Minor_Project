.class public final Lcom/fsck/k9/EmailAddressValidator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^([0-9a-zA-Z!#$%&\'*+\\-/=?^_`{|}~]+(\\.[0-9a-zA-Z!#$%&\'*+\\-/=?^_`{|}~]+)*|\"([\\p{Graph}\\p{Blank}&&[^\"\\\\]]|\\\\[\\p{Graph}\\p{Blank}])+\")\\@((((([a-zA-Z0-9]([a-zA-Z0-9]|\\-|_)*[a-zA-Z0-9])|[a-zA-Z0-9])\\.)+(([a-zA-Z]([a-zA-Z0-9]|\\-|_)*[a-zA-Z0-9])|[a-zA-Z]))|(([a-zA-Z0-9]([a-zA-Z0-9]|\\-|_)*[a-zA-Z0-9])|[a-zA-Z0-9]))"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/fsck/k9/EmailAddressValidator;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public static isValidAddressOnly(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/fsck/k9/EmailAddressValidator;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method
