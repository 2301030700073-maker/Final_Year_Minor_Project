.class public abstract Lcom/fsck/k9/helper/FileHelper;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final MIME_TYPE_BY_EXTENSION_MAP:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0x353

    .line 1
    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, ""

    const-string v2, "application/octet-stream"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "k9s"

    const-string v3, "application/x-k9settings"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "txt"

    const-string v3, "text/plain"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "123"

    const-string v4, "application/vnd.lotus-1-2-3"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "323"

    const-string v4, "text/h323"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "3dml"

    const-string v4, "text/vnd.in3d.3dml"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "3g2"

    const-string/jumbo v4, "video/3gpp2"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-string v1, "3gp"

    const-string/jumbo v4, "video/3gpp"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const-string v1, "aab"

    const-string v4, "application/x-authorware-bin"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x8

    aput-object v1, v0, v5

    const-string v1, "aac"

    const-string v5, "audio/x-aac"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x9

    aput-object v1, v0, v5

    const-string v1, "aam"

    const-string v5, "application/x-authorware-map"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xa

    aput-object v1, v0, v5

    const-string v1, "a"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xb

    aput-object v1, v0, v5

    const-string v1, "aas"

    const-string v5, "application/x-authorware-seg"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xc

    aput-object v1, v0, v5

    const-string v1, "abw"

    const-string v5, "application/x-abiword"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xd

    aput-object v1, v0, v5

    const-string v1, "acc"

    const-string v5, "application/vnd.americandynamics.acc"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xe

    aput-object v1, v0, v5

    const-string v1, "ace"

    const-string v5, "application/x-ace-compressed"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xf

    aput-object v1, v0, v5

    const-string v1, "acu"

    const-string v5, "application/vnd.acucobol"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x10

    aput-object v1, v0, v5

    const-string v1, "acutc"

    const-string v5, "application/vnd.acucorp"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x11

    aput-object v1, v0, v5

    const-string v1, "acx"

    const-string v5, "application/internet-property-stream"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x12

    aput-object v1, v0, v5

    const-string v1, "adp"

    const-string v5, "audio/adpcm"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x13

    aput-object v1, v0, v5

    const-string v1, "aep"

    const-string v5, "application/vnd.audiograph"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x14

    aput-object v1, v0, v5

    const-string v1, "afm"

    const-string v5, "application/x-font-type1"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x15

    aput-object v1, v0, v6

    const-string v1, "afp"

    const-string v6, "application/vnd.ibm.modcap"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x16

    aput-object v1, v0, v6

    const-string v1, "ai"

    const-string v6, "application/postscript"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x17

    aput-object v1, v0, v6

    const-string v1, "aif"

    const-string v6, "audio/x-aiff"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x18

    aput-object v1, v0, v6

    const-string v1, "aifc"

    const-string v6, "audio/x-aiff"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x19

    aput-object v1, v0, v6

    const-string v1, "aiff"

    const-string v6, "audio/x-aiff"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1a

    aput-object v1, v0, v6

    const-string v1, "air"

    const-string v6, "application/vnd.adobe.air-application-installer-package+zip"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1b

    aput-object v1, v0, v6

    const-string v1, "ami"

    const-string v6, "application/vnd.amiga.ami"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1c

    aput-object v1, v0, v6

    const-string v1, "apk"

    const-string v6, "application/vnd.android.package-archive"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1d

    aput-object v1, v0, v6

    const-string v1, "application"

    const-string v6, "application/x-ms-application"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1e

    aput-object v1, v0, v6

    const-string v1, "apr"

    const-string v6, "application/vnd.lotus-approach"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1f

    aput-object v1, v0, v6

    const-string v1, "asc"

    const-string v6, "application/pgp-signature"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x20

    aput-object v1, v0, v6

    const-string v1, "asf"

    const-string/jumbo v6, "video/x-ms-asf"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x21

    aput-object v1, v0, v6

    const-string v1, "asm"

    const-string v6, "text/x-asm"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x22

    aput-object v1, v0, v6

    const-string v1, "aso"

    const-string v6, "application/vnd.accpac.simply.aso"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x23

    aput-object v1, v0, v6

    const-string v1, "asr"

    const-string/jumbo v6, "video/x-ms-asf"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x24

    aput-object v1, v0, v6

    const-string v1, "asx"

    const-string/jumbo v6, "video/x-ms-asf"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x25

    aput-object v1, v0, v6

    const-string v1, "atc"

    const-string v6, "application/vnd.acucorp"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x26

    aput-object v1, v0, v6

    const-string v1, "atom"

    const-string v6, "application/atom+xml"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x27

    aput-object v1, v0, v6

    const-string v1, "atomcat"

    const-string v6, "application/atomcat+xml"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x28

    aput-object v1, v0, v6

    const-string v1, "atomsvc"

    const-string v6, "application/atomsvc+xml"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x29

    aput-object v1, v0, v6

    const-string v1, "atx"

    const-string v6, "application/vnd.antix.game-component"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2a

    aput-object v1, v0, v6

    const-string v1, "au"

    const-string v6, "audio/basic"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2b

    aput-object v1, v0, v6

    const-string v1, "avi"

    const-string/jumbo v6, "video/x-msvideo"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2c

    aput-object v1, v0, v6

    const-string v1, "aw"

    const-string v6, "application/applixware"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2d

    aput-object v1, v0, v6

    const-string v1, "axs"

    const-string v6, "application/olescript"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2e

    aput-object v1, v0, v6

    const-string v1, "azf"

    const-string v6, "application/vnd.airzip.filesecure.azf"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x2f

    aput-object v1, v0, v6

    const-string v1, "azs"

    const-string v6, "application/vnd.airzip.filesecure.azs"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x30

    aput-object v1, v0, v6

    const-string v1, "azw"

    const-string v6, "application/vnd.amazon.ebook"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x31

    aput-object v1, v0, v6

    const-string v1, "bas"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x32

    aput-object v1, v0, v6

    const-string v1, "bat"

    const-string v6, "application/x-msdownload"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x33

    aput-object v1, v0, v7

    const-string v1, "bcpio"

    const-string v7, "application/x-bcpio"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x34

    aput-object v1, v0, v7

    const-string v1, "bdf"

    const-string v7, "application/x-font-bdf"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x35

    aput-object v1, v0, v7

    const-string v1, "bdm"

    const-string v7, "application/vnd.syncml.dm+wbxml"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x36

    aput-object v1, v0, v7

    const-string v1, "bh2"

    const-string v7, "application/vnd.fujitsu.oasysprs"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x37

    aput-object v1, v0, v7

    const-string v1, "bin"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x38

    aput-object v1, v0, v7

    const-string v1, "bmi"

    const-string v7, "application/vnd.bmi"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x39

    aput-object v1, v0, v7

    const-string v1, "bmp"

    const-string v7, "image/bmp"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3a

    aput-object v1, v0, v7

    const-string v1, "book"

    const-string v7, "application/vnd.framemaker"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x3b

    aput-object v1, v0, v8

    const-string v1, "box"

    const-string v8, "application/vnd.previewsystems.box"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x3c

    aput-object v1, v0, v8

    const-string v1, "boz"

    const-string v8, "application/x-bzip2"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x3d

    aput-object v1, v0, v8

    const-string v1, "bpk"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x3e

    aput-object v1, v0, v8

    const-string v1, "btif"

    const-string v8, "image/prs.btif"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x3f

    aput-object v1, v0, v8

    const-string v1, "bz2"

    const-string v8, "application/x-bzip2"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x40

    aput-object v1, v0, v8

    const-string v1, "bz"

    const-string v8, "application/x-bzip"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x41

    aput-object v1, v0, v8

    const-string v1, "c4d"

    const-string v8, "application/vnd.clonk.c4group"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x42

    aput-object v1, v0, v9

    const-string v1, "c4f"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x43

    aput-object v1, v0, v9

    const-string v1, "c4g"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x44

    aput-object v1, v0, v9

    const-string v1, "c4p"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x45

    aput-object v1, v0, v9

    const-string v1, "c4u"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x46

    aput-object v1, v0, v8

    const-string v1, "cab"

    const-string v8, "application/vnd.ms-cab-compressed"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x47

    aput-object v1, v0, v8

    const-string v1, "car"

    const-string v8, "application/vnd.curl.car"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x48

    aput-object v1, v0, v8

    const-string v1, "cat"

    const-string v8, "application/vnd.ms-pki.seccat"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x49

    aput-object v1, v0, v8

    const-string v1, "cct"

    const-string v8, "application/x-director"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x4a

    aput-object v1, v0, v9

    const-string v1, "cc"

    const-string v9, "text/x-c"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x4b

    aput-object v1, v0, v10

    const-string v1, "ccxml"

    const-string v10, "application/ccxml+xml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x4c

    aput-object v1, v0, v10

    const-string v1, "cdbcmsg"

    const-string v10, "application/vnd.contact.cmsg"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x4d

    aput-object v1, v0, v10

    const-string v1, "cdf"

    const-string v10, "application/x-cdf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x4e

    aput-object v1, v0, v10

    const-string v1, "cdkey"

    const-string v10, "application/vnd.mediastation.cdkey"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x4f

    aput-object v1, v0, v10

    const-string v1, "cdx"

    const-string v10, "chemical/x-cdx"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x50

    aput-object v1, v0, v10

    const-string v1, "cdxml"

    const-string v10, "application/vnd.chemdraw+xml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x51

    aput-object v1, v0, v10

    const-string v1, "cdy"

    const-string v10, "application/vnd.cinderella"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x52

    aput-object v1, v0, v10

    const-string v1, "cer"

    const-string v10, "application/x-x509-ca-cert"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x53

    aput-object v1, v0, v10

    const-string v1, "cgm"

    const-string v10, "image/cgm"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x54

    aput-object v1, v0, v10

    const-string v1, "chat"

    const-string v10, "application/x-chat"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x55

    aput-object v1, v0, v10

    const-string v1, "chm"

    const-string v10, "application/vnd.ms-htmlhelp"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x56

    aput-object v1, v0, v10

    const-string v1, "chrt"

    const-string v10, "application/vnd.kde.kchart"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x57

    aput-object v1, v0, v10

    const-string v1, "cif"

    const-string v10, "chemical/x-cif"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x58

    aput-object v1, v0, v10

    const-string v1, "cii"

    const-string v10, "application/vnd.anser-web-certificate-issue-initiation"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x59

    aput-object v1, v0, v10

    const-string v1, "cla"

    const-string v10, "application/vnd.claymore"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x5a

    aput-object v1, v0, v10

    const-string v1, "class"

    const-string v10, "application/java-vm"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x5b

    aput-object v1, v0, v10

    const-string v1, "clkk"

    const-string v10, "application/vnd.crick.clicker.keyboard"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x5c

    aput-object v1, v0, v10

    const-string v1, "clkp"

    const-string v10, "application/vnd.crick.clicker.palette"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x5d

    aput-object v1, v0, v10

    const-string v1, "clkt"

    const-string v10, "application/vnd.crick.clicker.template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x5e

    aput-object v1, v0, v10

    const-string v1, "clkw"

    const-string v10, "application/vnd.crick.clicker.wordbank"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x5f

    aput-object v1, v0, v10

    const-string v1, "clkx"

    const-string v10, "application/vnd.crick.clicker"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x60

    aput-object v1, v0, v10

    const-string v1, "clp"

    const-string v10, "application/x-msclip"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x61

    aput-object v1, v0, v10

    const-string v1, "cmc"

    const-string v10, "application/vnd.cosmocaller"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x62

    aput-object v1, v0, v10

    const-string v1, "cmdf"

    const-string v10, "chemical/x-cmdf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x63

    aput-object v1, v0, v10

    const-string v1, "cml"

    const-string v10, "chemical/x-cml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x64

    aput-object v1, v0, v10

    const-string v1, "cmp"

    const-string v10, "application/vnd.yellowriver-custom-menu"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x65

    aput-object v1, v0, v10

    const-string v1, "cmx"

    const-string v10, "image/x-cmx"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x66

    aput-object v1, v0, v10

    const-string v1, "cod"

    const-string v10, "application/vnd.rim.cod"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x67

    aput-object v1, v0, v10

    const-string v1, "com"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x68

    aput-object v1, v0, v10

    const-string v1, "conf"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x69

    aput-object v1, v0, v10

    const-string v1, "cpio"

    const-string v10, "application/x-cpio"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x6a

    aput-object v1, v0, v10

    const-string v1, "cpp"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x6b

    aput-object v1, v0, v10

    const-string v1, "cpt"

    const-string v10, "application/mac-compactpro"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x6c

    aput-object v1, v0, v10

    const-string v1, "crd"

    const-string v10, "application/x-mscardfile"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x6d

    aput-object v1, v0, v10

    const-string v1, "crl"

    const-string v10, "application/pkix-crl"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x6e

    aput-object v1, v0, v10

    const-string v1, "crt"

    const-string v10, "application/x-x509-ca-cert"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x6f

    aput-object v1, v0, v10

    const-string v1, "csh"

    const-string v10, "application/x-csh"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x70

    aput-object v1, v0, v10

    const-string v1, "csml"

    const-string v10, "chemical/x-csml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x71

    aput-object v1, v0, v10

    const-string v1, "csp"

    const-string v10, "application/vnd.commonspace"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x72

    aput-object v1, v0, v10

    const-string v1, "css"

    const-string v10, "text/css"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x73

    aput-object v1, v0, v10

    const-string v1, "cst"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x74

    aput-object v1, v0, v10

    const-string v1, "csv"

    const-string v10, "text/csv"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x75

    aput-object v1, v0, v10

    const-string v1, "c"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x76

    aput-object v1, v0, v10

    const-string v1, "cu"

    const-string v10, "application/cu-seeme"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x77

    aput-object v1, v0, v10

    const-string v1, "curl"

    const-string v10, "text/vnd.curl"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x78

    aput-object v1, v0, v10

    const-string v1, "cww"

    const-string v10, "application/prs.cww"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x79

    aput-object v1, v0, v10

    const-string v1, "cxt"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x7a

    aput-object v1, v0, v10

    const-string v1, "cxx"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x7b

    aput-object v1, v0, v10

    const-string v1, "daf"

    const-string v10, "application/vnd.mobius.daf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x7c

    aput-object v1, v0, v10

    const-string v1, "dataless"

    const-string v10, "application/vnd.fdsn.seed"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x7d

    aput-object v1, v0, v10

    const-string v1, "davmount"

    const-string v10, "application/davmount+xml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x7e

    aput-object v1, v0, v10

    const-string v1, "dcr"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x7f

    aput-object v1, v0, v10

    const-string v1, "dcurl"

    const-string v10, "text/vnd.curl.dcurl"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x80

    aput-object v1, v0, v10

    const-string v1, "dd2"

    const-string v10, "application/vnd.oma.dd2+xml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x81

    aput-object v1, v0, v10

    const-string v1, "ddd"

    const-string v10, "application/vnd.fujixerox.ddd"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x82

    aput-object v1, v0, v10

    const-string v1, "deb"

    const-string v10, "application/x-debian-package"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x83

    aput-object v1, v0, v10

    const-string v1, "def"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x84

    aput-object v1, v0, v10

    const-string v1, "deploy"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x85

    aput-object v1, v0, v10

    const-string v1, "der"

    const-string v10, "application/x-x509-ca-cert"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x86

    aput-object v1, v0, v10

    const-string v1, "dfac"

    const-string v10, "application/vnd.dreamfactory"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x87

    aput-object v1, v0, v10

    const-string v1, "dic"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x88

    aput-object v1, v0, v10

    const-string v1, "diff"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x89

    aput-object v1, v0, v10

    const-string v1, "dir"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8a

    aput-object v1, v0, v10

    const-string v1, "dis"

    const-string v10, "application/vnd.mobius.dis"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8b

    aput-object v1, v0, v10

    const-string v1, "dist"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8c

    aput-object v1, v0, v10

    const-string v1, "distz"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8d

    aput-object v1, v0, v10

    const-string v1, "djv"

    const-string v10, "image/vnd.djvu"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8e

    aput-object v1, v0, v10

    const-string v1, "djvu"

    const-string v10, "image/vnd.djvu"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8f

    aput-object v1, v0, v10

    const-string v1, "dll"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x90

    aput-object v1, v0, v10

    const-string v1, "dmg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x91

    aput-object v1, v0, v10

    const-string v1, "dms"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x92

    aput-object v1, v0, v10

    const-string v1, "dna"

    const-string v10, "application/vnd.dna"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x93

    aput-object v1, v0, v10

    const-string v1, "doc"

    const-string v10, "application/msword"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x94

    aput-object v1, v0, v10

    const-string v1, "docm"

    const-string v10, "application/vnd.ms-word.document.macroenabled.12"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x95

    aput-object v1, v0, v10

    const-string v1, "docx"

    const-string v10, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x96

    aput-object v1, v0, v10

    const-string v1, "dot"

    const-string v10, "application/msword"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x97

    aput-object v1, v0, v10

    const-string v1, "dotm"

    const-string v10, "application/vnd.ms-word.template.macroenabled.12"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x98

    aput-object v1, v0, v10

    const-string v1, "dotx"

    const-string v10, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x99

    aput-object v1, v0, v10

    const-string v1, "dp"

    const-string v10, "application/vnd.osgi.dp"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x9a

    aput-object v1, v0, v10

    const-string v1, "dpg"

    const-string v10, "application/vnd.dpgraph"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x9b

    aput-object v1, v0, v10

    const-string v1, "dsc"

    const-string v10, "text/prs.lines.tag"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x9c

    aput-object v1, v0, v10

    const-string v1, "dtb"

    const-string v10, "application/x-dtbook+xml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x9d

    aput-object v1, v0, v10

    const-string v1, "dtd"

    const-string v10, "application/xml-dtd"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x9e

    aput-object v1, v0, v10

    const-string v1, "dts"

    const-string v10, "audio/vnd.dts"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x9f

    aput-object v1, v0, v10

    const-string v1, "dtshd"

    const-string v10, "audio/vnd.dts.hd"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa0

    aput-object v1, v0, v10

    const-string v1, "dump"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa1

    aput-object v1, v0, v10

    const-string v1, "dvi"

    const-string v10, "application/x-dvi"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa2

    aput-object v1, v0, v10

    const-string v1, "dwf"

    const-string v10, "model/vnd.dwf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa3

    aput-object v1, v0, v10

    const-string v1, "dwg"

    const-string v10, "image/vnd.dwg"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa4

    aput-object v1, v0, v10

    const-string v1, "dxf"

    const-string v10, "image/vnd.dxf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa5

    aput-object v1, v0, v10

    const-string v1, "dxp"

    const-string v10, "application/vnd.spotfire.dxp"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa6

    aput-object v1, v0, v10

    const-string v1, "dxr"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa7

    aput-object v1, v0, v10

    const-string v1, "ecelp4800"

    const-string v10, "audio/vnd.nuera.ecelp4800"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa8

    aput-object v1, v0, v10

    const-string v1, "ecelp7470"

    const-string v10, "audio/vnd.nuera.ecelp7470"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa9

    aput-object v1, v0, v10

    const-string v1, "ecelp9600"

    const-string v10, "audio/vnd.nuera.ecelp9600"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xaa

    aput-object v1, v0, v10

    const-string v1, "ecma"

    const-string v10, "application/ecmascript"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xab

    aput-object v1, v0, v10

    const-string v1, "edm"

    const-string v10, "application/vnd.novadigm.edm"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xac

    aput-object v1, v0, v10

    const-string v1, "edx"

    const-string v10, "application/vnd.novadigm.edx"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xad

    aput-object v1, v0, v10

    const-string v1, "efif"

    const-string v10, "application/vnd.picsel"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xae

    aput-object v1, v0, v10

    const-string v1, "ei6"

    const-string v10, "application/vnd.pg.osasli"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xaf

    aput-object v1, v0, v10

    const-string v1, "elc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xb0

    aput-object v1, v0, v10

    const-string v1, "eml"

    const-string v10, "message/rfc822"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xb1

    aput-object v1, v0, v11

    const-string v1, "emma"

    const-string v11, "application/emma+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xb2

    aput-object v1, v0, v11

    const-string v1, "eol"

    const-string v11, "audio/vnd.digital-winds"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xb3

    aput-object v1, v0, v11

    const-string v1, "eot"

    const-string v11, "application/vnd.ms-fontobject"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xb4

    aput-object v1, v0, v11

    const-string v1, "eps"

    const-string v11, "application/postscript"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xb5

    aput-object v1, v0, v11

    const-string v1, "epub"

    const-string v11, "application/epub+zip"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xb6

    aput-object v1, v0, v11

    const-string v1, "es3"

    const-string v11, "application/vnd.eszigno3+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xb7

    aput-object v1, v0, v11

    const-string v1, "esf"

    const-string v11, "application/vnd.epson.esf"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xb8

    aput-object v1, v0, v11

    const-string v1, "espass"

    const-string v11, "application/vnd.espass-espass+zip"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xb9

    aput-object v1, v0, v11

    const-string v1, "et3"

    const-string v11, "application/vnd.eszigno3+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xba

    aput-object v1, v0, v11

    const-string v1, "etx"

    const-string v11, "text/x-setext"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xbb

    aput-object v1, v0, v11

    const-string v1, "evy"

    const-string v11, "application/envoy"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xbc

    aput-object v1, v0, v11

    const-string v1, "exe"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xbd

    aput-object v1, v0, v11

    const-string v1, "ext"

    const-string v11, "application/vnd.novadigm.ext"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xbe

    aput-object v1, v0, v11

    const-string v1, "ez2"

    const-string v11, "application/vnd.ezpix-album"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xbf

    aput-object v1, v0, v11

    const-string v1, "ez3"

    const-string v11, "application/vnd.ezpix-package"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xc0

    aput-object v1, v0, v11

    const-string v1, "ez"

    const-string v11, "application/andrew-inset"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xc1

    aput-object v1, v0, v11

    const-string v1, "f4v"

    const-string/jumbo v11, "video/x-f4v"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xc2

    aput-object v1, v0, v11

    const-string v1, "f77"

    const-string v11, "text/x-fortran"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xc3

    aput-object v1, v0, v12

    const-string v1, "f90"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xc4

    aput-object v1, v0, v12

    const-string v1, "fbs"

    const-string v12, "image/vnd.fastbidsheet"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xc5

    aput-object v1, v0, v12

    const-string v1, "fdf"

    const-string v12, "application/vnd.fdf"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xc6

    aput-object v1, v0, v12

    const-string v1, "fe_launch"

    const-string v12, "application/vnd.denovo.fcselayout-link"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xc7

    aput-object v1, v0, v12

    const-string v1, "fg5"

    const-string v12, "application/vnd.fujitsu.oasysgp"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xc8

    aput-object v1, v0, v12

    const-string v1, "fgd"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xc9

    aput-object v1, v0, v12

    const-string v1, "fh4"

    const-string v12, "image/x-freehand"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xca

    aput-object v1, v0, v13

    const-string v1, "fh5"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xcb

    aput-object v1, v0, v13

    const-string v1, "fh7"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xcc

    aput-object v1, v0, v13

    const-string v1, "fhc"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xcd

    aput-object v1, v0, v13

    const-string v1, "fh"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xce

    aput-object v1, v0, v12

    const-string v1, "fif"

    const-string v12, "application/fractals"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xcf

    aput-object v1, v0, v12

    const-string v1, "fig"

    const-string v12, "application/x-xfig"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xd0

    aput-object v1, v0, v12

    const-string v1, "fli"

    const-string/jumbo v12, "video/x-fli"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xd1

    aput-object v1, v0, v12

    const-string v1, "flo"

    const-string v12, "application/vnd.micrografx.flo"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xd2

    aput-object v1, v0, v12

    const-string v1, "flr"

    const-string/jumbo v12, "x-world/x-vrml"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xd3

    aput-object v1, v0, v13

    const-string v1, "flv"

    const-string/jumbo v13, "video/x-flv"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xd4

    aput-object v1, v0, v13

    const-string v1, "flw"

    const-string v13, "application/vnd.kde.kivio"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xd5

    aput-object v1, v0, v13

    const-string v1, "flx"

    const-string v13, "text/vnd.fmi.flexstor"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xd6

    aput-object v1, v0, v13

    const-string v1, "fly"

    const-string v13, "text/vnd.fly"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xd7

    aput-object v1, v0, v13

    const-string v1, "fm"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xd8

    aput-object v1, v0, v13

    const-string v1, "fnc"

    const-string v13, "application/vnd.frogans.fnc"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xd9

    aput-object v1, v0, v13

    const-string v1, "for"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xda

    aput-object v1, v0, v13

    const-string v1, "fpx"

    const-string v13, "image/vnd.fpx"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xdb

    aput-object v1, v0, v13

    const-string v1, "frame"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xdc

    aput-object v1, v0, v13

    const-string v1, "fsc"

    const-string v13, "application/vnd.fsc.weblaunch"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xdd

    aput-object v1, v0, v13

    const-string v1, "fst"

    const-string v13, "image/vnd.fst"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xde

    aput-object v1, v0, v13

    const-string v1, "ftc"

    const-string v13, "application/vnd.fluxtime.clip"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xdf

    aput-object v1, v0, v13

    const-string v1, "f"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe0

    aput-object v1, v0, v11

    const-string v1, "fti"

    const-string v11, "application/vnd.anser-web-funds-transfer-initiation"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe1

    aput-object v1, v0, v11

    const-string v1, "fvt"

    const-string/jumbo v11, "video/vnd.fvt"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe2

    aput-object v1, v0, v11

    const-string v1, "fzs"

    const-string v11, "application/vnd.fuzzysheet"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe3

    aput-object v1, v0, v11

    const-string v1, "g3"

    const-string v11, "image/g3fax"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe4

    aput-object v1, v0, v11

    const-string v1, "gac"

    const-string v11, "application/vnd.groove-account"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe5

    aput-object v1, v0, v11

    const-string v1, "gdl"

    const-string v11, "model/vnd.gdl"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe6

    aput-object v1, v0, v11

    const-string v1, "geo"

    const-string v11, "application/vnd.dynageo"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe7

    aput-object v1, v0, v11

    const-string v1, "gex"

    const-string v11, "application/vnd.geometry-explorer"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe8

    aput-object v1, v0, v11

    const-string v1, "ggb"

    const-string v11, "application/vnd.geogebra.file"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xe9

    aput-object v1, v0, v11

    const-string v1, "ggt"

    const-string v11, "application/vnd.geogebra.tool"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xea

    aput-object v1, v0, v11

    const-string v1, "ghf"

    const-string v11, "application/vnd.groove-help"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xeb

    aput-object v1, v0, v11

    const-string v1, "gif"

    const-string v11, "image/gif"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xec

    aput-object v1, v0, v11

    const-string v1, "gim"

    const-string v11, "application/vnd.groove-identity-message"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xed

    aput-object v1, v0, v11

    const-string v1, "gmx"

    const-string v11, "application/vnd.gmx"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xee

    aput-object v1, v0, v11

    const-string v1, "gnumeric"

    const-string v11, "application/x-gnumeric"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xef

    aput-object v1, v0, v11

    const-string v1, "gph"

    const-string v11, "application/vnd.flographit"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf0

    aput-object v1, v0, v11

    const-string v1, "gqf"

    const-string v11, "application/vnd.grafeq"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf1

    aput-object v1, v0, v11

    const-string v1, "gqs"

    const-string v11, "application/vnd.grafeq"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf2

    aput-object v1, v0, v11

    const-string v1, "gram"

    const-string v11, "application/srgs"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf3

    aput-object v1, v0, v11

    const-string v1, "gre"

    const-string v11, "application/vnd.geometry-explorer"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf4

    aput-object v1, v0, v11

    const-string v1, "grv"

    const-string v11, "application/vnd.groove-injector"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf5

    aput-object v1, v0, v11

    const-string v1, "grxml"

    const-string v11, "application/srgs+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf6

    aput-object v1, v0, v11

    const-string v1, "gsf"

    const-string v11, "application/x-font-ghostscript"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf7

    aput-object v1, v0, v11

    const-string v1, "gtar"

    const-string v11, "application/x-gtar"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf8

    aput-object v1, v0, v11

    const-string v1, "gtm"

    const-string v11, "application/vnd.groove-tool-message"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xf9

    aput-object v1, v0, v11

    const-string v1, "gtw"

    const-string v11, "model/vnd.gtw"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xfa

    aput-object v1, v0, v11

    const-string v1, "gv"

    const-string v11, "text/vnd.graphviz"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xfb

    aput-object v1, v0, v11

    const-string v1, "gz"

    const-string v11, "application/x-gzip"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xfc

    aput-object v1, v0, v11

    const-string v1, "h261"

    const-string/jumbo v11, "video/h261"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xfd

    aput-object v1, v0, v11

    const-string v1, "h263"

    const-string/jumbo v11, "video/h263"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xfe

    aput-object v1, v0, v11

    const-string v1, "h264"

    const-string/jumbo v11, "video/h264"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xff

    aput-object v1, v0, v11

    const-string v1, "hbci"

    const-string v11, "application/vnd.hbci"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x100

    aput-object v1, v0, v11

    const-string v1, "hdf"

    const-string v11, "application/x-hdf"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x101

    aput-object v1, v0, v11

    const-string v1, "hh"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x102

    aput-object v1, v0, v9

    const-string v1, "hlp"

    const-string v9, "application/winhlp"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x103

    aput-object v1, v0, v9

    const-string v1, "hpgl"

    const-string v9, "application/vnd.hp-hpgl"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x104

    aput-object v1, v0, v9

    const-string v1, "hpid"

    const-string v9, "application/vnd.hp-hpid"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x105

    aput-object v1, v0, v9

    const-string v1, "hps"

    const-string v9, "application/vnd.hp-hps"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x106

    aput-object v1, v0, v9

    const-string v1, "hqx"

    const-string v9, "application/mac-binhex40"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x107

    aput-object v1, v0, v9

    const-string v1, "hta"

    const-string v9, "application/hta"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x108

    aput-object v1, v0, v9

    const-string v1, "htc"

    const-string v9, "text/x-component"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x109

    aput-object v1, v0, v9

    const-string v1, "h"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x10a

    aput-object v1, v0, v9

    const-string v1, "htke"

    const-string v9, "application/vnd.kenameaapp"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x10b

    aput-object v1, v0, v9

    const-string v1, "html"

    const-string v9, "text/html"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x10c

    aput-object v1, v0, v9

    const-string v1, "htm"

    const-string v9, "text/html"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x10d

    aput-object v1, v0, v9

    const-string v1, "htt"

    const-string v9, "text/webviewhtml"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x10e

    aput-object v1, v0, v9

    const-string v1, "hvd"

    const-string v9, "application/vnd.yamaha.hv-dic"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x10f

    aput-object v1, v0, v9

    const-string v1, "hvp"

    const-string v9, "application/vnd.yamaha.hv-voice"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x110

    aput-object v1, v0, v9

    const-string v1, "hvs"

    const-string v9, "application/vnd.yamaha.hv-script"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x111

    aput-object v1, v0, v9

    const-string v1, "icc"

    const-string v9, "application/vnd.iccprofile"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x112

    aput-object v1, v0, v9

    const-string v1, "ice"

    const-string/jumbo v9, "x-conference/x-cooltalk"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x113

    aput-object v1, v0, v9

    const-string v1, "icm"

    const-string v9, "application/vnd.iccprofile"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x114

    aput-object v1, v0, v9

    const-string v1, "ico"

    const-string v9, "image/x-icon"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x115

    aput-object v1, v0, v9

    const-string v1, "ics"

    const-string v9, "text/calendar"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x116

    aput-object v1, v0, v9

    const-string v1, "ief"

    const-string v9, "image/ief"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x117

    aput-object v1, v0, v9

    const-string v1, "ifb"

    const-string v9, "text/calendar"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x118

    aput-object v1, v0, v9

    const-string v1, "ifm"

    const-string v9, "application/vnd.shana.informed.formdata"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x119

    aput-object v1, v0, v9

    const-string v1, "iges"

    const-string v9, "model/iges"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x11a

    aput-object v1, v0, v9

    const-string v1, "igl"

    const-string v9, "application/vnd.igloader"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x11b

    aput-object v1, v0, v9

    const-string v1, "igs"

    const-string v9, "model/iges"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x11c

    aput-object v1, v0, v9

    const-string v1, "igx"

    const-string v9, "application/vnd.micrografx.igx"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x11d

    aput-object v1, v0, v9

    const-string v1, "iif"

    const-string v9, "application/vnd.shana.informed.interchange"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x11e

    aput-object v1, v0, v9

    const-string v1, "iii"

    const-string v9, "application/x-iphone"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x11f

    aput-object v1, v0, v9

    const-string v1, "imp"

    const-string v9, "application/vnd.accpac.simply.imp"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x120

    aput-object v1, v0, v9

    const-string v1, "ims"

    const-string v9, "application/vnd.ms-ims"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x121

    aput-object v1, v0, v9

    const-string v1, "ins"

    const-string v9, "application/x-internet-signup"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x122

    aput-object v1, v0, v9

    const-string v1, "in"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x123

    aput-object v1, v0, v9

    const-string v1, "ipk"

    const-string v9, "application/vnd.shana.informed.package"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x124

    aput-object v1, v0, v9

    const-string v1, "irm"

    const-string v9, "application/vnd.ibm.rights-management"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x125

    aput-object v1, v0, v9

    const-string v1, "irp"

    const-string v9, "application/vnd.irepository.package+xml"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x126

    aput-object v1, v0, v9

    const-string v1, "iso"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x127

    aput-object v1, v0, v9

    const-string v1, "isp"

    const-string v9, "application/x-internet-signup"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x128

    aput-object v1, v0, v9

    const-string v1, "itp"

    const-string v9, "application/vnd.shana.informed.formtemplate"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x129

    aput-object v1, v0, v9

    const-string v1, "ivp"

    const-string v9, "application/vnd.immervision-ivp"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x12a

    aput-object v1, v0, v9

    const-string v1, "ivu"

    const-string v9, "application/vnd.immervision-ivu"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x12b

    aput-object v1, v0, v9

    const-string v1, "jad"

    const-string v9, "text/vnd.sun.j2me.app-descriptor"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x12c

    aput-object v1, v0, v9

    const-string v1, "jam"

    const-string v9, "application/vnd.jam"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x12d

    aput-object v1, v0, v9

    const-string v1, "jar"

    const-string v9, "application/java-archive"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x12e

    aput-object v1, v0, v9

    const-string v1, "java"

    const-string v9, "text/x-java-source"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x12f

    aput-object v1, v0, v9

    const-string v1, "jfif"

    const-string v9, "image/pipeg"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x130

    aput-object v1, v0, v9

    const-string v1, "jisp"

    const-string v9, "application/vnd.jisp"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x131

    aput-object v1, v0, v9

    const-string v1, "jlt"

    const-string v9, "application/vnd.hp-jlyt"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x132

    aput-object v1, v0, v9

    const-string v1, "jnlp"

    const-string v9, "application/x-java-jnlp-file"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x133

    aput-object v1, v0, v9

    const-string v1, "joda"

    const-string v9, "application/vnd.joost.joda-archive"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x134

    aput-object v1, v0, v9

    const-string v1, "jpeg"

    const-string v9, "image/jpeg"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x135

    aput-object v1, v0, v9

    const-string v1, "jpe"

    const-string v9, "image/jpeg"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x136

    aput-object v1, v0, v9

    const-string v1, "jpg"

    const-string v9, "image/jpeg"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x137

    aput-object v1, v0, v9

    const-string v1, "jpgm"

    const-string/jumbo v9, "video/jpm"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x138

    aput-object v1, v0, v9

    const-string v1, "jpgv"

    const-string/jumbo v9, "video/jpeg"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x139

    aput-object v1, v0, v9

    const-string v1, "jpm"

    const-string/jumbo v9, "video/jpm"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x13a

    aput-object v1, v0, v9

    const-string v1, "js"

    const-string v9, "application/x-javascript"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x13b

    aput-object v1, v0, v9

    const-string v1, "json"

    const-string v9, "application/json"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x13c

    aput-object v1, v0, v9

    const-string v1, "kar"

    const-string v9, "audio/midi"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x13d

    aput-object v1, v0, v11

    const-string v1, "karbon"

    const-string v11, "application/vnd.kde.karbon"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x13e

    aput-object v1, v0, v11

    const-string v1, "kfo"

    const-string v11, "application/vnd.kde.kformula"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x13f

    aput-object v1, v0, v11

    const-string v1, "kia"

    const-string v11, "application/vnd.kidspiration"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x140

    aput-object v1, v0, v11

    const-string v1, "kil"

    const-string v11, "application/x-killustrator"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x141

    aput-object v1, v0, v11

    const-string v1, "kml"

    const-string v11, "application/vnd.google-earth.kml+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x142

    aput-object v1, v0, v11

    const-string v1, "kmz"

    const-string v11, "application/vnd.google-earth.kmz"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x143

    aput-object v1, v0, v11

    const-string v1, "kne"

    const-string v11, "application/vnd.kinar"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x144

    aput-object v1, v0, v11

    const-string v1, "knp"

    const-string v11, "application/vnd.kinar"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x145

    aput-object v1, v0, v11

    const-string v1, "kon"

    const-string v11, "application/vnd.kde.kontour"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x146

    aput-object v1, v0, v11

    const-string v1, "kpr"

    const-string v11, "application/vnd.kde.kpresenter"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x147

    aput-object v1, v0, v11

    const-string v1, "kpt"

    const-string v11, "application/vnd.kde.kpresenter"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x148

    aput-object v1, v0, v11

    const-string v1, "ksh"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x149

    aput-object v1, v0, v11

    const-string v1, "ksp"

    const-string v11, "application/vnd.kde.kspread"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x14a

    aput-object v1, v0, v11

    const-string v1, "ktr"

    const-string v11, "application/vnd.kahootz"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x14b

    aput-object v1, v0, v11

    const-string v1, "ktz"

    const-string v11, "application/vnd.kahootz"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x14c

    aput-object v1, v0, v11

    const-string v1, "kwd"

    const-string v11, "application/vnd.kde.kword"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x14d

    aput-object v1, v0, v11

    const-string v1, "kwt"

    const-string v11, "application/vnd.kde.kword"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x14e

    aput-object v1, v0, v11

    const-string v1, "latex"

    const-string v11, "application/x-latex"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x14f

    aput-object v1, v0, v11

    const-string v1, "lbd"

    const-string v11, "application/vnd.llamagraphics.life-balance.desktop"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x150

    aput-object v1, v0, v11

    const-string v1, "lbe"

    const-string v11, "application/vnd.llamagraphics.life-balance.exchange+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x151

    aput-object v1, v0, v11

    const-string v1, "les"

    const-string v11, "application/vnd.hhe.lesson-player"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x152

    aput-object v1, v0, v11

    const-string v1, "lha"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x153

    aput-object v1, v0, v11

    const-string v1, "link66"

    const-string v11, "application/vnd.route66.link66+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x154

    aput-object v1, v0, v11

    const-string v1, "list3820"

    const-string v11, "application/vnd.ibm.modcap"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x155

    aput-object v1, v0, v11

    const-string v1, "listafp"

    const-string v11, "application/vnd.ibm.modcap"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x156

    aput-object v1, v0, v11

    const-string v1, "list"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x157

    aput-object v1, v0, v11

    const-string v1, "log"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x158

    aput-object v1, v0, v11

    const-string v1, "lostxml"

    const-string v11, "application/lost+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x159

    aput-object v1, v0, v11

    const-string v1, "lrf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x15a

    aput-object v1, v0, v11

    const-string v1, "lrm"

    const-string v11, "application/vnd.ms-lrm"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x15b

    aput-object v1, v0, v11

    const-string v1, "lsf"

    const-string/jumbo v11, "video/x-la-asf"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x15c

    aput-object v1, v0, v11

    const-string v1, "lsx"

    const-string/jumbo v11, "video/x-la-asf"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x15d

    aput-object v1, v0, v11

    const-string v1, "ltf"

    const-string v11, "application/vnd.frogans.ltf"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x15e

    aput-object v1, v0, v11

    const-string v1, "lvp"

    const-string v11, "audio/vnd.lucent.voice"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x15f

    aput-object v1, v0, v11

    const-string v1, "lwp"

    const-string v11, "application/vnd.lotus-wordpro"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x160

    aput-object v1, v0, v11

    const-string v1, "lzh"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x161

    aput-object v1, v0, v11

    const-string v1, "m13"

    const-string v11, "application/x-msmediaview"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x162

    aput-object v1, v0, v11

    const-string v1, "m14"

    const-string v11, "application/x-msmediaview"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x163

    aput-object v1, v0, v11

    const-string v1, "m1v"

    const-string/jumbo v11, "video/mpeg"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x164

    aput-object v1, v0, v13

    const-string v1, "m2a"

    const-string v13, "audio/mpeg"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x165

    aput-object v1, v0, v14

    const-string v1, "m2v"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x166

    aput-object v1, v0, v14

    const-string v1, "m3a"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x167

    aput-object v1, v0, v14

    const-string v1, "m3u"

    const-string v14, "audio/x-mpegurl"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x168

    aput-object v1, v0, v14

    const-string v1, "m4u"

    const-string/jumbo v14, "video/vnd.mpegurl"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x169

    aput-object v1, v0, v14

    const-string v1, "m4v"

    const-string/jumbo v14, "video/x-m4v"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x16a

    aput-object v1, v0, v14

    const-string v1, "ma"

    const-string v14, "application/mathematica"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x16b

    aput-object v1, v0, v14

    const-string v1, "mag"

    const-string v14, "application/vnd.ecowin.chart"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x16c

    aput-object v1, v0, v14

    const-string v1, "maker"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x16d

    aput-object v1, v0, v7

    const-string v1, "man"

    const-string v7, "text/troff"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x16e

    aput-object v1, v0, v14

    const-string v1, "mathml"

    const-string v14, "application/mathml+xml"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x16f

    aput-object v1, v0, v14

    const-string v1, "mb"

    const-string v14, "application/mathematica"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x170

    aput-object v1, v0, v14

    const-string v1, "mbk"

    const-string v14, "application/vnd.mobius.mbk"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x171

    aput-object v1, v0, v14

    const-string v1, "mbox"

    const-string v14, "application/mbox"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x172

    aput-object v1, v0, v14

    const-string v1, "mc1"

    const-string v14, "application/vnd.medcalcdata"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x173

    aput-object v1, v0, v14

    const-string v1, "mcd"

    const-string v14, "application/vnd.mcd"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x174

    aput-object v1, v0, v14

    const-string v1, "mcurl"

    const-string v14, "text/vnd.curl.mcurl"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x175

    aput-object v1, v0, v14

    const-string v1, "mdb"

    const-string v14, "application/x-msaccess"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x176

    aput-object v1, v0, v14

    const-string v1, "mdi"

    const-string v14, "image/vnd.ms-modi"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x177

    aput-object v1, v0, v14

    const-string v1, "mesh"

    const-string v14, "model/mesh"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x178

    aput-object v1, v0, v14

    const-string v1, "me"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x179

    aput-object v1, v0, v14

    const-string v1, "mfm"

    const-string v14, "application/vnd.mfmp"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x17a

    aput-object v1, v0, v14

    const-string v1, "mgz"

    const-string v14, "application/vnd.proteus.magazine"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x17b

    aput-object v1, v0, v14

    const-string v1, "mht"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x17c

    aput-object v1, v0, v14

    const-string v1, "mhtml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x17d

    aput-object v1, v0, v14

    const-string v1, "mid"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x17e

    aput-object v1, v0, v14

    const-string v1, "midi"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x17f

    aput-object v1, v0, v14

    const-string v1, "mif"

    const-string v14, "application/vnd.mif"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x180

    aput-object v1, v0, v14

    const-string v1, "mime"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x181

    aput-object v1, v0, v14

    const-string v1, "mj2"

    const-string/jumbo v14, "video/mj2"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x182

    aput-object v1, v0, v14

    const-string v1, "mjp2"

    const-string/jumbo v14, "video/mj2"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x183

    aput-object v1, v0, v14

    const-string v1, "mlp"

    const-string v14, "application/vnd.dolby.mlp"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x184

    aput-object v1, v0, v14

    const-string v1, "mmd"

    const-string v14, "application/vnd.chipnuts.karaoke-mmd"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x185

    aput-object v1, v0, v14

    const-string v1, "mmf"

    const-string v14, "application/vnd.smaf"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x186

    aput-object v1, v0, v14

    const-string v1, "mmr"

    const-string v14, "image/vnd.fujixerox.edmics-mmr"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x187

    aput-object v1, v0, v14

    const-string v1, "mny"

    const-string v14, "application/x-msmoney"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x188

    aput-object v1, v0, v14

    const-string v1, "mobi"

    const-string v14, "application/x-mobipocket-ebook"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x189

    aput-object v1, v0, v14

    const-string v1, "movie"

    const-string/jumbo v14, "video/x-sgi-movie"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x18a

    aput-object v1, v0, v14

    const-string v1, "mov"

    const-string/jumbo v14, "video/quicktime"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x18b

    aput-object v1, v0, v14

    const-string v1, "mp2a"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x18c

    aput-object v1, v0, v14

    const-string v1, "mp2"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x18d

    aput-object v1, v0, v14

    const-string v1, "mp3"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x18e

    aput-object v1, v0, v14

    const-string v1, "mp4a"

    const-string v14, "audio/mp4"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x18f

    aput-object v1, v0, v14

    const-string v1, "mp4s"

    const-string v14, "application/mp4"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x190

    aput-object v1, v0, v14

    const-string v1, "mp4"

    const-string/jumbo v14, "video/mp4"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x191

    aput-object v1, v0, v14

    const-string v1, "mp4v"

    const-string/jumbo v14, "video/mp4"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x192

    aput-object v1, v0, v14

    const-string v1, "mpa"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x193

    aput-object v1, v0, v14

    const-string v1, "mpc"

    const-string v14, "application/vnd.mophun.certificate"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x194

    aput-object v1, v0, v14

    const-string v1, "mpeg"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x195

    aput-object v1, v0, v14

    const-string v1, "mpe"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x196

    aput-object v1, v0, v14

    const-string v1, "mpg4"

    const-string/jumbo v14, "video/mp4"

    filled-new-array {v1, v14}, [Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0x197

    aput-object v1, v0, v14

    const-string v1, "mpga"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x198

    aput-object v1, v0, v13

    const-string v1, "mpg"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x199

    aput-object v1, v0, v13

    const-string v1, "mpkg"

    const-string v13, "application/vnd.apple.installer+xml"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x19a

    aput-object v1, v0, v13

    const-string v1, "mpm"

    const-string v13, "application/vnd.blueice.multipass"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x19b

    aput-object v1, v0, v13

    const-string v1, "mpn"

    const-string v13, "application/vnd.mophun.application"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x19c

    aput-object v1, v0, v13

    const-string v1, "mpp"

    const-string v13, "application/vnd.ms-project"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x19d

    aput-object v1, v0, v13

    const-string v1, "mpt"

    const-string v13, "application/vnd.ms-project"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0x19e

    aput-object v1, v0, v13

    const-string v1, "mpv2"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x19f

    aput-object v1, v0, v11

    const-string v1, "mpy"

    const-string v11, "application/vnd.ibm.minipay"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1a0

    aput-object v1, v0, v11

    const-string v1, "mqy"

    const-string v11, "application/vnd.mobius.mqy"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1a1

    aput-object v1, v0, v11

    const-string v1, "mrc"

    const-string v11, "application/marc"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1a2

    aput-object v1, v0, v11

    const-string v1, "mscml"

    const-string v11, "application/mediaservercontrol+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1a3

    aput-object v1, v0, v11

    const-string v1, "mseed"

    const-string v11, "application/vnd.fdsn.mseed"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1a4

    aput-object v1, v0, v11

    const-string v1, "mseq"

    const-string v11, "application/vnd.mseq"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1a5

    aput-object v1, v0, v11

    const-string v1, "msf"

    const-string v11, "application/vnd.epson.msf"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1a6

    aput-object v1, v0, v11

    const-string v1, "msh"

    const-string v11, "model/mesh"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1a7

    aput-object v1, v0, v11

    const-string v1, "msi"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1a8

    aput-object v1, v0, v6

    const-string v1, "ms"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1a9

    aput-object v1, v0, v6

    const-string v1, "msty"

    const-string v6, "application/vnd.muvee.style"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1aa

    aput-object v1, v0, v6

    const-string v1, "mts"

    const-string v6, "model/vnd.mts"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1ab

    aput-object v1, v0, v6

    const-string v1, "mus"

    const-string v6, "application/vnd.musician"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1ac

    aput-object v1, v0, v6

    const-string v1, "musicxml"

    const-string v6, "application/vnd.recordare.musicxml+xml"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1ad

    aput-object v1, v0, v6

    const-string v1, "mvb"

    const-string v6, "application/x-msmediaview"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1ae

    aput-object v1, v0, v6

    const-string v1, "mxf"

    const-string v6, "application/mxf"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1af

    aput-object v1, v0, v6

    const-string v1, "mxl"

    const-string v6, "application/vnd.recordare.musicxml"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x1b0

    aput-object v1, v0, v6

    const-string v1, "mxml"

    const-string v6, "application/xv+xml"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b1

    aput-object v1, v0, v11

    const-string v1, "mxs"

    const-string v11, "application/vnd.triscape.mxs"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b2

    aput-object v1, v0, v11

    const-string v1, "mxu"

    const-string/jumbo v11, "video/vnd.mpegurl"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b3

    aput-object v1, v0, v11

    const-string v1, "nb"

    const-string v11, "application/mathematica"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b4

    aput-object v1, v0, v11

    const-string v1, "nc"

    const-string v11, "application/x-netcdf"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b5

    aput-object v1, v0, v11

    const-string v1, "ncx"

    const-string v11, "application/x-dtbncx+xml"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b6

    aput-object v1, v0, v11

    const-string v1, "n-gage"

    const-string v11, "application/vnd.nokia.n-gage.symbian.install"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b7

    aput-object v1, v0, v11

    const-string v1, "ngdat"

    const-string v11, "application/vnd.nokia.n-gage.data"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b8

    aput-object v1, v0, v11

    const-string v1, "nlu"

    const-string v11, "application/vnd.neurolanguage.nlu"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1b9

    aput-object v1, v0, v11

    const-string v1, "nml"

    const-string v11, "application/vnd.enliven"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1ba

    aput-object v1, v0, v11

    const-string v1, "nnd"

    const-string v11, "application/vnd.noblenet-directory"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1bb

    aput-object v1, v0, v11

    const-string v1, "nns"

    const-string v11, "application/vnd.noblenet-sealer"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1bc

    aput-object v1, v0, v11

    const-string v1, "nnw"

    const-string v11, "application/vnd.noblenet-web"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1bd

    aput-object v1, v0, v11

    const-string v1, "npx"

    const-string v11, "image/vnd.net-fpx"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1be

    aput-object v1, v0, v11

    const-string v1, "nsf"

    const-string v11, "application/vnd.lotus-notes"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0x1bf

    aput-object v1, v0, v11

    const-string v1, "nws"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1c0

    aput-object v1, v0, v10

    const-string v1, "oa2"

    const-string v10, "application/vnd.fujitsu.oasys2"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1c1

    aput-object v1, v0, v10

    const-string v1, "oa3"

    const-string v10, "application/vnd.fujitsu.oasys3"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1c2

    aput-object v1, v0, v10

    const-string v1, "o"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1c3

    aput-object v1, v0, v10

    const-string v1, "oas"

    const-string v10, "application/vnd.fujitsu.oasys"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1c4

    aput-object v1, v0, v10

    const-string v1, "obd"

    const-string v10, "application/x-msbinder"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1c5

    aput-object v1, v0, v10

    const-string v1, "obj"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1c6

    aput-object v1, v0, v10

    const-string v1, "oda"

    const-string v10, "application/oda"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1c7

    aput-object v1, v0, v10

    const-string v1, "odb"

    const-string v10, "application/vnd.oasis.opendocument.database"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1c8

    aput-object v1, v0, v10

    const-string v1, "odc"

    const-string v10, "application/vnd.oasis.opendocument.chart"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1c9

    aput-object v1, v0, v10

    const-string v1, "odf"

    const-string v10, "application/vnd.oasis.opendocument.formula"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1ca

    aput-object v1, v0, v10

    const-string v1, "odft"

    const-string v10, "application/vnd.oasis.opendocument.formula-template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1cb

    aput-object v1, v0, v10

    const-string v1, "odg"

    const-string v10, "application/vnd.oasis.opendocument.graphics"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1cc

    aput-object v1, v0, v10

    const-string v1, "odi"

    const-string v10, "application/vnd.oasis.opendocument.image"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1cd

    aput-object v1, v0, v10

    const-string v1, "odp"

    const-string v10, "application/vnd.oasis.opendocument.presentation"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1ce

    aput-object v1, v0, v10

    const-string v1, "ods"

    const-string v10, "application/vnd.oasis.opendocument.spreadsheet"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1cf

    aput-object v1, v0, v10

    const-string v1, "odt"

    const-string v10, "application/vnd.oasis.opendocument.text"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d0

    aput-object v1, v0, v10

    const-string v1, "oga"

    const-string v10, "audio/ogg"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d1

    aput-object v1, v0, v10

    const-string v1, "ogg"

    const-string v10, "audio/ogg"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d2

    aput-object v1, v0, v10

    const-string v1, "ogv"

    const-string/jumbo v10, "video/ogg"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d3

    aput-object v1, v0, v10

    const-string v1, "ogx"

    const-string v10, "application/ogg"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d4

    aput-object v1, v0, v10

    const-string v1, "onepkg"

    const-string v10, "application/onenote"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d5

    aput-object v1, v0, v10

    const-string v1, "onetmp"

    const-string v10, "application/onenote"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d6

    aput-object v1, v0, v10

    const-string v1, "onetoc2"

    const-string v10, "application/onenote"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d7

    aput-object v1, v0, v10

    const-string v1, "onetoc"

    const-string v10, "application/onenote"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d8

    aput-object v1, v0, v10

    const-string v1, "opf"

    const-string v10, "application/oebps-package+xml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1d9

    aput-object v1, v0, v10

    const-string v1, "oprc"

    const-string v10, "application/vnd.palm"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1da

    aput-object v1, v0, v10

    const-string v1, "org"

    const-string v10, "application/vnd.lotus-organizer"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1db

    aput-object v1, v0, v10

    const-string v1, "osf"

    const-string v10, "application/vnd.yamaha.openscoreformat"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1dc

    aput-object v1, v0, v10

    const-string v1, "osfpvg"

    const-string v10, "application/vnd.yamaha.openscoreformat.osfpvg+xml"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1dd

    aput-object v1, v0, v10

    const-string v1, "otc"

    const-string v10, "application/vnd.oasis.opendocument.chart-template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1de

    aput-object v1, v0, v10

    const-string v1, "otf"

    const-string v10, "application/x-font-otf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1df

    aput-object v1, v0, v10

    const-string v1, "otg"

    const-string v10, "application/vnd.oasis.opendocument.graphics-template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e0

    aput-object v1, v0, v10

    const-string v1, "oth"

    const-string v10, "application/vnd.oasis.opendocument.text-web"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e1

    aput-object v1, v0, v10

    const-string v1, "oti"

    const-string v10, "application/vnd.oasis.opendocument.image-template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e2

    aput-object v1, v0, v10

    const-string v1, "otm"

    const-string v10, "application/vnd.oasis.opendocument.text-master"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e3

    aput-object v1, v0, v10

    const-string v1, "otp"

    const-string v10, "application/vnd.oasis.opendocument.presentation-template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e4

    aput-object v1, v0, v10

    const-string v1, "ots"

    const-string v10, "application/vnd.oasis.opendocument.spreadsheet-template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e5

    aput-object v1, v0, v10

    const-string v1, "ott"

    const-string v10, "application/vnd.oasis.opendocument.text-template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e6

    aput-object v1, v0, v10

    const-string v1, "oxt"

    const-string v10, "application/vnd.openofficeorg.extension"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e7

    aput-object v1, v0, v10

    const-string v1, "p10"

    const-string v10, "application/pkcs10"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e8

    aput-object v1, v0, v10

    const-string v1, "p12"

    const-string v10, "application/x-pkcs12"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1e9

    aput-object v1, v0, v10

    const-string v1, "p7b"

    const-string v10, "application/x-pkcs7-certificates"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1ea

    aput-object v1, v0, v10

    const-string v1, "p7c"

    const-string v10, "application/x-pkcs7-mime"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1eb

    aput-object v1, v0, v10

    const-string v1, "p7m"

    const-string v10, "application/x-pkcs7-mime"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1ec

    aput-object v1, v0, v10

    const-string v1, "p7r"

    const-string v10, "application/x-pkcs7-certreqresp"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1ed

    aput-object v1, v0, v10

    const-string v1, "p7s"

    const-string v10, "application/x-pkcs7-signature"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1ee

    aput-object v1, v0, v10

    const-string v1, "pas"

    const-string v10, "text/x-pascal"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1ef

    aput-object v1, v0, v10

    const-string v1, "pbd"

    const-string v10, "application/vnd.powerbuilder6"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f0

    aput-object v1, v0, v10

    const-string v1, "pbm"

    const-string v10, "image/x-portable-bitmap"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f1

    aput-object v1, v0, v10

    const-string v1, "pcf"

    const-string v10, "application/x-font-pcf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f2

    aput-object v1, v0, v10

    const-string v1, "pcl"

    const-string v10, "application/vnd.hp-pcl"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f3

    aput-object v1, v0, v10

    const-string v1, "pclxl"

    const-string v10, "application/vnd.hp-pclxl"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f4

    aput-object v1, v0, v10

    const-string v1, "pct"

    const-string v10, "image/x-pict"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f5

    aput-object v1, v0, v10

    const-string v1, "pcurl"

    const-string v10, "application/vnd.curl.pcurl"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f6

    aput-object v1, v0, v10

    const-string v1, "pcx"

    const-string v10, "image/x-pcx"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f7

    aput-object v1, v0, v10

    const-string v1, "pdb"

    const-string v10, "application/vnd.palm"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f8

    aput-object v1, v0, v10

    const-string v1, "pdf"

    const-string v10, "application/pdf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1f9

    aput-object v1, v0, v10

    const-string v1, "pfa"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1fa

    aput-object v1, v0, v10

    const-string v1, "pfb"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x1fb

    aput-object v1, v0, v10

    const-string v1, "pfm"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1fc

    aput-object v1, v0, v5

    const-string v1, "pfr"

    const-string v5, "application/font-tdpfr"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1fd

    aput-object v1, v0, v5

    const-string v1, "pfx"

    const-string v5, "application/x-pkcs12"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1fe

    aput-object v1, v0, v5

    const-string v1, "pgm"

    const-string v5, "image/x-portable-graymap"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x1ff

    aput-object v1, v0, v5

    const-string v1, "pgn"

    const-string v5, "application/x-chess-pgn"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x200

    aput-object v1, v0, v5

    const-string v1, "pgp"

    const-string v5, "application/pgp-encrypted"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x201

    aput-object v1, v0, v5

    const-string v1, "pic"

    const-string v5, "image/x-pict"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x202

    aput-object v1, v0, v5

    const-string v1, "pkg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x203

    aput-object v1, v0, v5

    const-string v1, "pki"

    const-string v5, "application/pkixcmp"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x204

    aput-object v1, v0, v5

    const-string v1, "pkipath"

    const-string v5, "application/pkix-pkipath"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x205

    aput-object v1, v0, v5

    const-string v1, "pkpass"

    const-string v5, "application/vnd.apple.pkpass"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x206

    aput-object v1, v0, v5

    const-string v1, "pko"

    const-string v5, "application/ynd.ms-pkipko"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x207

    aput-object v1, v0, v5

    const-string v1, "plb"

    const-string v5, "application/vnd.3gpp.pic-bw-large"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x208

    aput-object v1, v0, v5

    const-string v1, "plc"

    const-string v5, "application/vnd.mobius.plc"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x209

    aput-object v1, v0, v5

    const-string v1, "plf"

    const-string v5, "application/vnd.pocketlearn"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x20a

    aput-object v1, v0, v5

    const-string v1, "pls"

    const-string v5, "application/pls+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x20b

    aput-object v1, v0, v5

    const-string v1, "pl"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x20c

    aput-object v1, v0, v5

    const-string v1, "pma"

    const-string v5, "application/x-perfmon"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x20d

    aput-object v1, v0, v10

    const-string v1, "pmc"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x20e

    aput-object v1, v0, v10

    const-string v1, "pml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x20f

    aput-object v1, v0, v10

    const-string v1, "pmr"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x210

    aput-object v1, v0, v10

    const-string v1, "pmw"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x211

    aput-object v1, v0, v5

    const-string v1, "png"

    const-string v5, "image/png"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x212

    aput-object v1, v0, v5

    const-string v1, "pnm"

    const-string v5, "image/x-portable-anymap"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x213

    aput-object v1, v0, v5

    const-string v1, "portpkg"

    const-string v5, "application/vnd.macports.portpkg"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x214

    aput-object v1, v0, v5

    const-string v1, "pot,"

    const-string v5, "application/vnd.ms-powerpoint"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x215

    aput-object v1, v0, v10

    const-string v1, "pot"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x216

    aput-object v1, v0, v10

    const-string v1, "potm"

    const-string v10, "application/vnd.ms-powerpoint.template.macroenabled.12"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x217

    aput-object v1, v0, v10

    const-string v1, "potx"

    const-string v10, "application/vnd.openxmlformats-officedocument.presentationml.template"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x218

    aput-object v1, v0, v10

    const-string v1, "ppa"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x219

    aput-object v1, v0, v10

    const-string v1, "ppam"

    const-string v10, "application/vnd.ms-powerpoint.addin.macroenabled.12"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x21a

    aput-object v1, v0, v10

    const-string v1, "ppd"

    const-string v10, "application/vnd.cups-ppd"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x21b

    aput-object v1, v0, v10

    const-string v1, "ppm"

    const-string v10, "image/x-portable-pixmap"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x21c

    aput-object v1, v0, v10

    const-string v1, "pps"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x21d

    aput-object v1, v0, v10

    const-string v1, "ppsm"

    const-string v10, "application/vnd.ms-powerpoint.slideshow.macroenabled.12"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x21e

    aput-object v1, v0, v10

    const-string v1, "ppsx"

    const-string v10, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x21f

    aput-object v1, v0, v10

    const-string v1, "ppt"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x220

    aput-object v1, v0, v10

    const-string v1, "pptm"

    const-string v10, "application/vnd.ms-powerpoint.presentation.macroenabled.12"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x221

    aput-object v1, v0, v10

    const-string v1, "pptx"

    const-string v10, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x222

    aput-object v1, v0, v10

    const-string v1, "pqa"

    const-string v10, "application/vnd.palm"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x223

    aput-object v1, v0, v10

    const-string v1, "prc"

    const-string v10, "application/x-mobipocket-ebook"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x224

    aput-object v1, v0, v10

    const-string v1, "pre"

    const-string v10, "application/vnd.lotus-freelance"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x225

    aput-object v1, v0, v10

    const-string v1, "prf"

    const-string v10, "application/pics-rules"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x226

    aput-object v1, v0, v10

    const-string v1, "ps"

    const-string v10, "application/postscript"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x227

    aput-object v1, v0, v10

    const-string v1, "psb"

    const-string v10, "application/vnd.3gpp.pic-bw-small"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x228

    aput-object v1, v0, v10

    const-string v1, "psd"

    const-string v10, "image/vnd.adobe.photoshop"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x229

    aput-object v1, v0, v10

    const-string v1, "psf"

    const-string v10, "application/x-font-linux-psf"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x22a

    aput-object v1, v0, v10

    const-string v1, "p"

    const-string v10, "text/x-pascal"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x22b

    aput-object v1, v0, v10

    const-string v1, "ptid"

    const-string v10, "application/vnd.pvi.ptid1"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x22c

    aput-object v1, v0, v10

    const-string v1, "pub"

    const-string v10, "application/x-mspublisher"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x22d

    aput-object v1, v0, v10

    const-string v1, "pvb"

    const-string v10, "application/vnd.3gpp.pic-bw-var"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x22e

    aput-object v1, v0, v10

    const-string v1, "pwn"

    const-string v10, "application/vnd.3m.post-it-notes"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x22f

    aput-object v1, v0, v10

    const-string v1, "pwz"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x230

    aput-object v1, v0, v5

    const-string v1, "pya"

    const-string v5, "audio/vnd.ms-playready.media.pya"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x231

    aput-object v1, v0, v5

    const-string v1, "pyc"

    const-string v5, "application/x-python-code"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x232

    aput-object v1, v0, v5

    const-string v1, "pyo"

    const-string v5, "application/x-python-code"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x233

    aput-object v1, v0, v5

    const-string v1, "py"

    const-string v5, "text/x-python"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x234

    aput-object v1, v0, v5

    const-string v1, "pyv"

    const-string/jumbo v5, "video/vnd.ms-playready.media.pyv"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x235

    aput-object v1, v0, v5

    const-string v1, "qam"

    const-string v5, "application/vnd.epson.quickanime"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x236

    aput-object v1, v0, v5

    const-string v1, "qbo"

    const-string v5, "application/vnd.intu.qbo"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x237

    aput-object v1, v0, v5

    const-string v1, "qfx"

    const-string v5, "application/vnd.intu.qfx"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x238

    aput-object v1, v0, v5

    const-string v1, "qps"

    const-string v5, "application/vnd.publishare-delta-tree"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x239

    aput-object v1, v0, v5

    const-string v1, "qt"

    const-string/jumbo v5, "video/quicktime"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x23a

    aput-object v1, v0, v5

    const-string v1, "qwd"

    const-string v5, "application/vnd.quark.quarkxpress"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x23b

    aput-object v1, v0, v10

    const-string v1, "qwt"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x23c

    aput-object v1, v0, v10

    const-string v1, "qxb"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x23d

    aput-object v1, v0, v10

    const-string v1, "qxd"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x23e

    aput-object v1, v0, v10

    const-string v1, "qxl"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x23f

    aput-object v1, v0, v10

    const-string v1, "qxt"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x240

    aput-object v1, v0, v5

    const-string v1, "ra"

    const-string v5, "audio/x-pn-realaudio"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x241

    aput-object v1, v0, v5

    const-string v1, "ram"

    const-string v5, "audio/x-pn-realaudio"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x242

    aput-object v1, v0, v5

    const-string v1, "rar"

    const-string v5, "application/x-rar-compressed"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x243

    aput-object v1, v0, v5

    const-string v1, "ras"

    const-string v5, "image/x-cmu-raster"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x244

    aput-object v1, v0, v5

    const-string v1, "rcprofile"

    const-string v5, "application/vnd.ipunplugged.rcprofile"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x245

    aput-object v1, v0, v5

    const-string v1, "rdf"

    const-string v5, "application/rdf+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x246

    aput-object v1, v0, v5

    const-string v1, "rdz"

    const-string v5, "application/vnd.data-vision.rdz"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x247

    aput-object v1, v0, v5

    const-string v1, "rep"

    const-string v5, "application/vnd.businessobjects"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x248

    aput-object v1, v0, v5

    const-string v1, "res"

    const-string v5, "application/x-dtbresource+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x249

    aput-object v1, v0, v5

    const-string v1, "rgb"

    const-string v5, "image/x-rgb"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x24a

    aput-object v1, v0, v5

    const-string v1, "rif"

    const-string v5, "application/reginfo+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x24b

    aput-object v1, v0, v5

    const-string v1, "rl"

    const-string v5, "application/resource-lists+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x24c

    aput-object v1, v0, v5

    const-string v1, "rlc"

    const-string v5, "image/vnd.fujixerox.edmics-rlc"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x24d

    aput-object v1, v0, v5

    const-string v1, "rld"

    const-string v5, "application/resource-lists-diff+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x24e

    aput-object v1, v0, v5

    const-string v1, "rm"

    const-string v5, "application/vnd.rn-realmedia"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x24f

    aput-object v1, v0, v5

    const-string v1, "rmi"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x250

    aput-object v1, v0, v5

    const-string v1, "rmp"

    const-string v5, "audio/x-pn-realaudio-plugin"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x251

    aput-object v1, v0, v5

    const-string v1, "rms"

    const-string v5, "application/vnd.jcp.javame.midlet-rms"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x252

    aput-object v1, v0, v5

    const-string v1, "rnc"

    const-string v5, "application/relax-ng-compact-syntax"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x253

    aput-object v1, v0, v5

    const-string v1, "roff"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x254

    aput-object v1, v0, v5

    const-string v1, "rpm"

    const-string v5, "application/x-rpm"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x255

    aput-object v1, v0, v5

    const-string v1, "rpss"

    const-string v5, "application/vnd.nokia.radio-presets"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x256

    aput-object v1, v0, v5

    const-string v1, "rpst"

    const-string v5, "application/vnd.nokia.radio-preset"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x257

    aput-object v1, v0, v5

    const-string v1, "rq"

    const-string v5, "application/sparql-query"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x258

    aput-object v1, v0, v5

    const-string v1, "rs"

    const-string v5, "application/rls-services+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x259

    aput-object v1, v0, v5

    const-string v1, "rsd"

    const-string v5, "application/rsd+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x25a

    aput-object v1, v0, v5

    const-string v1, "rss"

    const-string v5, "application/rss+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x25b

    aput-object v1, v0, v5

    const-string v1, "rtf"

    const-string v5, "application/rtf"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x25c

    aput-object v1, v0, v5

    const-string v1, "rtx"

    const-string v5, "text/richtext"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x25d

    aput-object v1, v0, v5

    const-string v1, "saf"

    const-string v5, "application/vnd.yamaha.smaf-audio"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x25e

    aput-object v1, v0, v5

    const-string v1, "sbml"

    const-string v5, "application/sbml+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x25f

    aput-object v1, v0, v5

    const-string v1, "sc"

    const-string v5, "application/vnd.ibm.secure-container"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x260

    aput-object v1, v0, v5

    const-string v1, "scd"

    const-string v5, "application/x-msschedule"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x261

    aput-object v1, v0, v5

    const-string v1, "scm"

    const-string v5, "application/vnd.lotus-screencam"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x262

    aput-object v1, v0, v5

    const-string v1, "scq"

    const-string v5, "application/scvp-cv-request"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x263

    aput-object v1, v0, v5

    const-string v1, "scs"

    const-string v5, "application/scvp-cv-response"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x264

    aput-object v1, v0, v5

    const-string v1, "sct"

    const-string v5, "text/scriptlet"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x265

    aput-object v1, v0, v5

    const-string v1, "scurl"

    const-string v5, "text/vnd.curl.scurl"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x266

    aput-object v1, v0, v5

    const-string v1, "sda"

    const-string v5, "application/vnd.stardivision.draw"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x267

    aput-object v1, v0, v5

    const-string v1, "sdc"

    const-string v5, "application/vnd.stardivision.calc"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x268

    aput-object v1, v0, v5

    const-string v1, "sdd"

    const-string v5, "application/vnd.stardivision.impress"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x269

    aput-object v1, v0, v5

    const-string v1, "sdkd"

    const-string v5, "application/vnd.solent.sdkm+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x26a

    aput-object v1, v0, v5

    const-string v1, "sdkm"

    const-string v5, "application/vnd.solent.sdkm+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x26b

    aput-object v1, v0, v5

    const-string v1, "sdp"

    const-string v5, "application/sdp"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x26c

    aput-object v1, v0, v5

    const-string v1, "sdw"

    const-string v5, "application/vnd.stardivision.writer"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x26d

    aput-object v1, v0, v5

    const-string v1, "see"

    const-string v5, "application/vnd.seemail"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x26e

    aput-object v1, v0, v5

    const-string v1, "seed"

    const-string v5, "application/vnd.fdsn.seed"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x26f

    aput-object v1, v0, v5

    const-string v1, "sema"

    const-string v5, "application/vnd.sema"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x270

    aput-object v1, v0, v5

    const-string v1, "semd"

    const-string v5, "application/vnd.semd"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x271

    aput-object v1, v0, v5

    const-string v1, "semf"

    const-string v5, "application/vnd.semf"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x272

    aput-object v1, v0, v5

    const-string v1, "ser"

    const-string v5, "application/java-serialized-object"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x273

    aput-object v1, v0, v5

    const-string v1, "setpay"

    const-string v5, "application/set-payment-initiation"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x274

    aput-object v1, v0, v5

    const-string v1, "setreg"

    const-string v5, "application/set-registration-initiation"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x275

    aput-object v1, v0, v5

    const-string v1, "sfd-hdstx"

    const-string v5, "application/vnd.hydrostatix.sof-data"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x276

    aput-object v1, v0, v5

    const-string v1, "sfs"

    const-string v5, "application/vnd.spotfire.sfs"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x277

    aput-object v1, v0, v5

    const-string v1, "sgl"

    const-string v5, "application/vnd.stardivision.writer-global"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x278

    aput-object v1, v0, v5

    const-string v1, "sgml"

    const-string v5, "text/sgml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x279

    aput-object v1, v0, v5

    const-string v1, "sgm"

    const-string v5, "text/sgml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x27a

    aput-object v1, v0, v5

    const-string v1, "sh"

    const-string v5, "application/x-sh"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x27b

    aput-object v1, v0, v5

    const-string v1, "shar"

    const-string v5, "application/x-shar"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x27c

    aput-object v1, v0, v5

    const-string v1, "shf"

    const-string v5, "application/shf+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x27d

    aput-object v1, v0, v5

    const-string v1, "sic"

    const-string v5, "application/vnd.wap.sic"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x27e

    aput-object v1, v0, v5

    const-string v1, "sig"

    const-string v5, "application/pgp-signature"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x27f

    aput-object v1, v0, v5

    const-string v1, "silo"

    const-string v5, "model/mesh"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x280

    aput-object v1, v0, v5

    const-string v1, "sis"

    const-string v5, "application/vnd.symbian.install"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x281

    aput-object v1, v0, v5

    const-string v1, "sisx"

    const-string v5, "application/vnd.symbian.install"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x282

    aput-object v1, v0, v5

    const-string v1, "sit"

    const-string v5, "application/x-stuffit"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x283

    aput-object v1, v0, v5

    const-string v1, "si"

    const-string v5, "text/vnd.wap.si"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x284

    aput-object v1, v0, v5

    const-string v1, "sitx"

    const-string v5, "application/x-stuffitx"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x285

    aput-object v1, v0, v5

    const-string v1, "skd"

    const-string v5, "application/vnd.koan"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x286

    aput-object v1, v0, v5

    const-string v1, "skm"

    const-string v5, "application/vnd.koan"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x287

    aput-object v1, v0, v5

    const-string v1, "skp"

    const-string v5, "application/vnd.koan"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x288

    aput-object v1, v0, v5

    const-string v1, "skt"

    const-string v5, "application/vnd.koan"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x289

    aput-object v1, v0, v5

    const-string v1, "slc"

    const-string v5, "application/vnd.wap.slc"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x28a

    aput-object v1, v0, v5

    const-string v1, "sldm"

    const-string v5, "application/vnd.ms-powerpoint.slide.macroenabled.12"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x28b

    aput-object v1, v0, v5

    const-string v1, "sldx"

    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.slide"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x28c

    aput-object v1, v0, v5

    const-string v1, "slt"

    const-string v5, "application/vnd.epson.salt"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x28d

    aput-object v1, v0, v5

    const-string v1, "sl"

    const-string v5, "text/vnd.wap.sl"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x28e

    aput-object v1, v0, v5

    const-string v1, "smf"

    const-string v5, "application/vnd.stardivision.math"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x28f

    aput-object v1, v0, v5

    const-string v1, "smi"

    const-string v5, "application/smil+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x290

    aput-object v1, v0, v5

    const-string v1, "smil"

    const-string v5, "application/smil+xml"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x291

    aput-object v1, v0, v5

    const-string v1, "snd"

    const-string v5, "audio/basic"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x292

    aput-object v1, v0, v5

    const-string v1, "snf"

    const-string v5, "application/x-font-snf"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x293

    aput-object v1, v0, v5

    const-string v1, "so"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x294

    aput-object v1, v0, v2

    const-string v1, "spc"

    const-string v2, "application/x-pkcs7-certificates"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x295

    aput-object v1, v0, v2

    const-string v1, "spf"

    const-string v2, "application/vnd.yamaha.smaf-phrase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x296

    aput-object v1, v0, v2

    const-string v1, "spl"

    const-string v2, "application/x-futuresplash"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x297

    aput-object v1, v0, v2

    const-string v1, "spot"

    const-string v2, "text/vnd.in3d.spot"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x298

    aput-object v1, v0, v2

    const-string v1, "spp"

    const-string v2, "application/scvp-vp-response"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x299

    aput-object v1, v0, v2

    const-string v1, "spq"

    const-string v2, "application/scvp-vp-request"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29a

    aput-object v1, v0, v2

    const-string v1, "spx"

    const-string v2, "audio/ogg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29b

    aput-object v1, v0, v2

    const-string v1, "src"

    const-string v2, "application/x-wais-source"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29c

    aput-object v1, v0, v2

    const-string v1, "srx"

    const-string v2, "application/sparql-results+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29d

    aput-object v1, v0, v2

    const-string v1, "sse"

    const-string v2, "application/vnd.kodak-descriptor"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29e

    aput-object v1, v0, v2

    const-string v1, "ssf"

    const-string v2, "application/vnd.epson.ssf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29f

    aput-object v1, v0, v2

    const-string v1, "ssml"

    const-string v2, "application/ssml+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a0

    aput-object v1, v0, v2

    const-string v1, "sst"

    const-string v2, "application/vnd.ms-pkicertstore"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a1

    aput-object v1, v0, v2

    const-string v1, "stc"

    const-string v2, "application/vnd.sun.xml.calc.template"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a2

    aput-object v1, v0, v2

    const-string v1, "std"

    const-string v2, "application/vnd.sun.xml.draw.template"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a3

    aput-object v1, v0, v2

    const-string v1, "s"

    const-string v2, "text/x-asm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a4

    aput-object v1, v0, v2

    const-string v1, "stf"

    const-string v2, "application/vnd.wt.stf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a5

    aput-object v1, v0, v2

    const-string v1, "sti"

    const-string v2, "application/vnd.sun.xml.impress.template"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a6

    aput-object v1, v0, v2

    const-string v1, "stk"

    const-string v2, "application/hyperstudio"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a7

    aput-object v1, v0, v2

    const-string v1, "stl"

    const-string v2, "application/vnd.ms-pki.stl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a8

    aput-object v1, v0, v2

    const-string v1, "stm"

    const-string v2, "text/html"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a9

    aput-object v1, v0, v2

    const-string v1, "str"

    const-string v2, "application/vnd.pg.format"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2aa

    aput-object v1, v0, v2

    const-string v1, "stw"

    const-string v2, "application/vnd.sun.xml.writer.template"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ab

    aput-object v1, v0, v2

    const-string v1, "sus"

    const-string v2, "application/vnd.sus-calendar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ac

    aput-object v1, v0, v2

    const-string v1, "susp"

    const-string v2, "application/vnd.sus-calendar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ad

    aput-object v1, v0, v2

    const-string v1, "sv4cpio"

    const-string v2, "application/x-sv4cpio"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ae

    aput-object v1, v0, v2

    const-string v1, "sv4crc"

    const-string v2, "application/x-sv4crc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2af

    aput-object v1, v0, v2

    const-string v1, "svd"

    const-string v2, "application/vnd.svd"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b0

    aput-object v1, v0, v2

    const-string v1, "svg"

    const-string v2, "image/svg+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b1

    aput-object v1, v0, v2

    const-string v1, "svgz"

    const-string v2, "image/svg+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b2

    aput-object v1, v0, v2

    const-string v1, "swa"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b3

    aput-object v1, v0, v2

    const-string v1, "swf"

    const-string v2, "application/x-shockwave-flash"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b4

    aput-object v1, v0, v2

    const-string v1, "swi"

    const-string v2, "application/vnd.arastra.swi"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b5

    aput-object v1, v0, v2

    const-string v1, "sxc"

    const-string v2, "application/vnd.sun.xml.calc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b6

    aput-object v1, v0, v2

    const-string v1, "sxd"

    const-string v2, "application/vnd.sun.xml.draw"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b7

    aput-object v1, v0, v2

    const-string v1, "sxg"

    const-string v2, "application/vnd.sun.xml.writer.global"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b8

    aput-object v1, v0, v2

    const-string v1, "sxi"

    const-string v2, "application/vnd.sun.xml.impress"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b9

    aput-object v1, v0, v2

    const-string v1, "sxm"

    const-string v2, "application/vnd.sun.xml.math"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ba

    aput-object v1, v0, v2

    const-string v1, "sxw"

    const-string v2, "application/vnd.sun.xml.writer"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2bb

    aput-object v1, v0, v2

    const-string v1, "tao"

    const-string v2, "application/vnd.tao.intent-module-archive"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2bc

    aput-object v1, v0, v2

    const-string v1, "t"

    const-string v2, "application/x-troff"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2bd

    aput-object v1, v0, v2

    const-string v1, "tar"

    const-string v2, "application/x-tar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2be

    aput-object v1, v0, v2

    const-string v1, "tcap"

    const-string v2, "application/vnd.3gpp2.tcap"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2bf

    aput-object v1, v0, v2

    const-string v1, "tcl"

    const-string v2, "application/x-tcl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c0

    aput-object v1, v0, v2

    const-string v1, "teacher"

    const-string v2, "application/vnd.smart.teacher"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c1

    aput-object v1, v0, v2

    const-string v1, "tex"

    const-string v2, "application/x-tex"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c2

    aput-object v1, v0, v2

    const-string v1, "texi"

    const-string v2, "application/x-texinfo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c3

    aput-object v1, v0, v2

    const-string v1, "texinfo"

    const-string v2, "application/x-texinfo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c4

    aput-object v1, v0, v2

    const-string v1, "text"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c5

    aput-object v1, v0, v2

    const-string v1, "tfm"

    const-string v2, "application/x-tex-tfm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c6

    aput-object v1, v0, v2

    const-string v1, "tgz"

    const-string v2, "application/x-gzip"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c7

    aput-object v1, v0, v2

    const-string v1, "tiff"

    const-string v2, "image/tiff"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c8

    aput-object v1, v0, v2

    const-string v1, "tif"

    const-string v2, "image/tiff"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c9

    aput-object v1, v0, v2

    const-string v1, "tmo"

    const-string v2, "application/vnd.tmobile-livetv"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ca

    aput-object v1, v0, v2

    const-string v1, "torrent"

    const-string v2, "application/x-bittorrent"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2cb

    aput-object v1, v0, v2

    const-string v1, "tpl"

    const-string v2, "application/vnd.groove-tool-template"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2cc

    aput-object v1, v0, v2

    const-string v1, "tpt"

    const-string v2, "application/vnd.trid.tpt"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2cd

    aput-object v1, v0, v2

    const-string v1, "tra"

    const-string v2, "application/vnd.trueapp"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ce

    aput-object v1, v0, v2

    const-string v1, "trm"

    const-string v2, "application/x-msterminal"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2cf

    aput-object v1, v0, v2

    const-string v1, "tr"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d0

    aput-object v1, v0, v2

    const-string v1, "tsv"

    const-string v2, "text/tab-separated-values"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d1

    aput-object v1, v0, v2

    const-string v1, "ttc"

    const-string v2, "application/x-font-ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d2

    aput-object v1, v0, v2

    const-string v1, "ttf"

    const-string v2, "application/x-font-ttf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d3

    aput-object v1, v0, v2

    const-string v1, "twd"

    const-string v2, "application/vnd.simtech-mindmapper"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d4

    aput-object v1, v0, v2

    const-string v1, "twds"

    const-string v2, "application/vnd.simtech-mindmapper"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d5

    aput-object v1, v0, v2

    const-string v1, "txd"

    const-string v2, "application/vnd.genomatix.tuxedo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d6

    aput-object v1, v0, v2

    const-string v1, "txf"

    const-string v2, "application/vnd.mobius.txf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d7

    aput-object v1, v0, v2

    const-string v1, "txt"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d8

    aput-object v1, v0, v2

    const-string v1, "u32"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d9

    aput-object v1, v0, v2

    const-string v1, "udeb"

    const-string v2, "application/x-debian-package"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2da

    aput-object v1, v0, v2

    const-string v1, "ufd"

    const-string v2, "application/vnd.ufdl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2db

    aput-object v1, v0, v2

    const-string v1, "ufdl"

    const-string v2, "application/vnd.ufdl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2dc

    aput-object v1, v0, v2

    const-string v1, "uls"

    const-string v2, "text/iuls"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2dd

    aput-object v1, v0, v2

    const-string v1, "umj"

    const-string v2, "application/vnd.umajin"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2de

    aput-object v1, v0, v2

    const-string v1, "unityweb"

    const-string v2, "application/vnd.unity"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2df

    aput-object v1, v0, v2

    const-string/jumbo v1, "uoml"

    const-string v2, "application/vnd.uoml+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e0

    aput-object v1, v0, v2

    const-string/jumbo v1, "uris"

    const-string v2, "text/uri-list"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e1

    aput-object v1, v0, v2

    const-string/jumbo v1, "uri"

    const-string v2, "text/uri-list"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e2

    aput-object v1, v0, v2

    const-string/jumbo v1, "urls"

    const-string v2, "text/uri-list"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e3

    aput-object v1, v0, v2

    const-string/jumbo v1, "ustar"

    const-string v2, "application/x-ustar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e4

    aput-object v1, v0, v2

    const-string/jumbo v1, "utz"

    const-string v2, "application/vnd.uiq.theme"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e5

    aput-object v1, v0, v2

    const-string/jumbo v1, "uu"

    const-string v2, "text/x-uuencode"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e6

    aput-object v1, v0, v2

    const-string/jumbo v1, "vcd"

    const-string v2, "application/x-cdlink"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e7

    aput-object v1, v0, v2

    const-string/jumbo v1, "vcf"

    const-string v2, "text/x-vcard"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e8

    aput-object v1, v0, v2

    const-string/jumbo v1, "vcg"

    const-string v2, "application/vnd.groove-vcard"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e9

    aput-object v1, v0, v2

    const-string/jumbo v1, "vcs"

    const-string v2, "text/x-vcalendar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ea

    aput-object v1, v0, v2

    const-string/jumbo v1, "vcx"

    const-string v2, "application/vnd.vcx"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2eb

    aput-object v1, v0, v2

    const-string/jumbo v1, "vis"

    const-string v2, "application/vnd.visionary"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ec

    aput-object v1, v0, v2

    const-string/jumbo v1, "viv"

    const-string/jumbo v2, "video/vnd.vivo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ed

    aput-object v1, v0, v2

    const-string/jumbo v1, "vor"

    const-string v2, "application/vnd.stardivision.writer"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ee

    aput-object v1, v0, v2

    const-string/jumbo v1, "vox"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ef

    aput-object v1, v0, v2

    const-string/jumbo v1, "vrml"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f0

    aput-object v1, v0, v2

    const-string/jumbo v1, "vsd"

    const-string v2, "application/vnd.visio"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f1

    aput-object v1, v0, v2

    const-string/jumbo v1, "vsf"

    const-string v2, "application/vnd.vsf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f2

    aput-object v1, v0, v2

    const-string/jumbo v1, "vss"

    const-string v2, "application/vnd.visio"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f3

    aput-object v1, v0, v2

    const-string/jumbo v1, "vst"

    const-string v2, "application/vnd.visio"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f4

    aput-object v1, v0, v2

    const-string/jumbo v1, "vsw"

    const-string v2, "application/vnd.visio"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f5

    aput-object v1, v0, v2

    const-string/jumbo v1, "vtu"

    const-string v2, "model/vnd.vtu"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f6

    aput-object v1, v0, v2

    const-string/jumbo v1, "vxml"

    const-string v2, "application/voicexml+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f7

    aput-object v1, v0, v2

    const-string/jumbo v1, "w3d"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f8

    aput-object v1, v0, v2

    const-string/jumbo v1, "wad"

    const-string v2, "application/x-doom"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f9

    aput-object v1, v0, v2

    const-string/jumbo v1, "wav"

    const-string v2, "audio/x-wav"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2fa

    aput-object v1, v0, v2

    const-string/jumbo v1, "wax"

    const-string v2, "audio/x-ms-wax"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2fb

    aput-object v1, v0, v2

    const-string/jumbo v1, "wbmp"

    const-string v2, "image/vnd.wap.wbmp"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2fc

    aput-object v1, v0, v2

    const-string/jumbo v1, "wbs"

    const-string v2, "application/vnd.criticaltools.wbs+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2fd

    aput-object v1, v0, v2

    const-string/jumbo v1, "wbxml"

    const-string v2, "application/vnd.wap.wbxml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2fe

    aput-object v1, v0, v2

    const-string/jumbo v1, "wcm"

    const-string v2, "application/vnd.ms-works"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ff

    aput-object v1, v0, v2

    const-string/jumbo v1, "wdb"

    const-string v2, "application/vnd.ms-works"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x300

    aput-object v1, v0, v2

    const-string/jumbo v1, "wiz"

    const-string v2, "application/msword"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x301

    aput-object v1, v0, v2

    const-string/jumbo v1, "wks"

    const-string v2, "application/vnd.ms-works"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x302

    aput-object v1, v0, v2

    const-string/jumbo v1, "wma"

    const-string v2, "audio/x-ms-wma"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x303

    aput-object v1, v0, v2

    const-string/jumbo v1, "wmd"

    const-string v2, "application/x-ms-wmd"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x304

    aput-object v1, v0, v2

    const-string/jumbo v1, "wmf"

    const-string v2, "application/x-msmetafile"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x305

    aput-object v1, v0, v2

    const-string/jumbo v1, "wmlc"

    const-string v2, "application/vnd.wap.wmlc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x306

    aput-object v1, v0, v2

    const-string/jumbo v1, "wmlsc"

    const-string v2, "application/vnd.wap.wmlscriptc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x307

    aput-object v1, v0, v2

    const-string/jumbo v1, "wmls"

    const-string v2, "text/vnd.wap.wmlscript"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x308

    aput-object v1, v0, v2

    const-string/jumbo v1, "wml"

    const-string v2, "text/vnd.wap.wml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x309

    aput-object v1, v0, v2

    const-string/jumbo v1, "wm"

    const-string/jumbo v2, "video/x-ms-wm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30a

    aput-object v1, v0, v2

    const-string/jumbo v1, "wmv"

    const-string/jumbo v2, "video/x-ms-wmv"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30b

    aput-object v1, v0, v2

    const-string/jumbo v1, "wmx"

    const-string/jumbo v2, "video/x-ms-wmx"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30c

    aput-object v1, v0, v2

    const-string/jumbo v1, "wmz"

    const-string v2, "application/x-ms-wmz"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30d

    aput-object v1, v0, v2

    const-string/jumbo v1, "wpd"

    const-string v2, "application/vnd.wordperfect"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30e

    aput-object v1, v0, v2

    const-string/jumbo v1, "wpl"

    const-string v2, "application/vnd.ms-wpl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30f

    aput-object v1, v0, v2

    const-string/jumbo v1, "wps"

    const-string v2, "application/vnd.ms-works"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x310

    aput-object v1, v0, v2

    const-string/jumbo v1, "wqd"

    const-string v2, "application/vnd.wqd"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x311

    aput-object v1, v0, v2

    const-string/jumbo v1, "wri"

    const-string v2, "application/x-mswrite"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x312

    aput-object v1, v0, v2

    const-string/jumbo v1, "wrl"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x313

    aput-object v1, v0, v2

    const-string/jumbo v1, "wrz"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x314

    aput-object v1, v0, v2

    const-string/jumbo v1, "wsdl"

    const-string v2, "application/wsdl+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x315

    aput-object v1, v0, v2

    const-string/jumbo v1, "wspolicy"

    const-string v2, "application/wspolicy+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x316

    aput-object v1, v0, v2

    const-string/jumbo v1, "wtb"

    const-string v2, "application/vnd.webturbo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x317

    aput-object v1, v0, v2

    const-string/jumbo v1, "wvx"

    const-string/jumbo v2, "video/x-ms-wvx"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x318

    aput-object v1, v0, v2

    const-string/jumbo v1, "x32"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x319

    aput-object v1, v0, v2

    const-string/jumbo v1, "x3d"

    const-string v2, "application/vnd.hzn-3d-crossword"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31a

    aput-object v1, v0, v2

    const-string/jumbo v1, "xaf"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31b

    aput-object v1, v0, v2

    const-string/jumbo v1, "xap"

    const-string v2, "application/x-silverlight-app"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31c

    aput-object v1, v0, v2

    const-string/jumbo v1, "xar"

    const-string v2, "application/vnd.xara"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31d

    aput-object v1, v0, v2

    const-string/jumbo v1, "xbap"

    const-string v2, "application/x-ms-xbap"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31e

    aput-object v1, v0, v2

    const-string/jumbo v1, "xbd"

    const-string v2, "application/vnd.fujixerox.docuworks.binder"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31f

    aput-object v1, v0, v2

    const-string/jumbo v1, "xbm"

    const-string v2, "image/x-xbitmap"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x320

    aput-object v1, v0, v2

    const-string/jumbo v1, "xdm"

    const-string v2, "application/vnd.syncml.dm+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x321

    aput-object v1, v0, v2

    const-string/jumbo v1, "xdp"

    const-string v2, "application/vnd.adobe.xdp+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x322

    aput-object v1, v0, v2

    const-string/jumbo v1, "xdw"

    const-string v2, "application/vnd.fujixerox.docuworks"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x323

    aput-object v1, v0, v2

    const-string/jumbo v1, "xenc"

    const-string v2, "application/xenc+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x324

    aput-object v1, v0, v2

    const-string/jumbo v1, "xer"

    const-string v2, "application/patch-ops-error+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x325

    aput-object v1, v0, v2

    const-string/jumbo v1, "xfdf"

    const-string v2, "application/vnd.adobe.xfdf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x326

    aput-object v1, v0, v2

    const-string/jumbo v1, "xfdl"

    const-string v2, "application/vnd.xfdl"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x327

    aput-object v1, v0, v2

    const-string/jumbo v1, "xht"

    const-string v2, "application/xhtml+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x328

    aput-object v1, v0, v2

    const-string/jumbo v1, "xhtml"

    const-string v2, "application/xhtml+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x329

    aput-object v1, v0, v2

    const-string/jumbo v1, "xhvml"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32a

    aput-object v1, v0, v2

    const-string/jumbo v1, "xif"

    const-string v2, "image/vnd.xiff"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32b

    aput-object v1, v0, v2

    const-string/jumbo v1, "xla"

    const-string v2, "application/vnd.ms-excel"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x32c

    aput-object v1, v0, v3

    const-string/jumbo v1, "xlam"

    const-string v3, "application/vnd.ms-excel.addin.macroenabled.12"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x32d

    aput-object v1, v0, v3

    const-string/jumbo v1, "xlb"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x32e

    aput-object v1, v0, v3

    const-string/jumbo v1, "xlc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x32f

    aput-object v1, v0, v3

    const-string/jumbo v1, "xlm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x330

    aput-object v1, v0, v3

    const-string/jumbo v1, "xls"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x331

    aput-object v1, v0, v3

    const-string/jumbo v1, "xlsb"

    const-string v3, "application/vnd.ms-excel.sheet.binary.macroenabled.12"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x332

    aput-object v1, v0, v3

    const-string/jumbo v1, "xlsm"

    const-string v3, "application/vnd.ms-excel.sheet.macroenabled.12"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x333

    aput-object v1, v0, v3

    const-string/jumbo v1, "xlsx"

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x334

    aput-object v1, v0, v3

    const-string/jumbo v1, "xlt"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x335

    aput-object v1, v0, v3

    const-string/jumbo v1, "xltm"

    const-string v3, "application/vnd.ms-excel.template.macroenabled.12"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x336

    aput-object v1, v0, v3

    const-string/jumbo v1, "xltx"

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x337

    aput-object v1, v0, v3

    const-string/jumbo v1, "xlw"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x338

    aput-object v1, v0, v2

    const-string/jumbo v1, "xml"

    const-string v2, "application/xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x339

    aput-object v1, v0, v2

    const-string/jumbo v1, "xo"

    const-string v2, "application/vnd.olpc-sugar"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33a

    aput-object v1, v0, v2

    const-string/jumbo v1, "xof"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33b

    aput-object v1, v0, v2

    const-string/jumbo v1, "xop"

    const-string v2, "application/xop+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33c

    aput-object v1, v0, v2

    const-string/jumbo v1, "xpdl"

    const-string v2, "application/xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33d

    aput-object v1, v0, v2

    const-string/jumbo v1, "xpi"

    const-string v2, "application/x-xpinstall"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33e

    aput-object v1, v0, v2

    const-string/jumbo v1, "xpm"

    const-string v2, "image/x-xpixmap"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33f

    aput-object v1, v0, v2

    const-string/jumbo v1, "xpr"

    const-string v2, "application/vnd.is-xpr"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x340

    aput-object v1, v0, v2

    const-string/jumbo v1, "xps"

    const-string v2, "application/vnd.ms-xpsdocument"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x341

    aput-object v1, v0, v2

    const-string/jumbo v1, "xpw"

    const-string v2, "application/vnd.intercon.formnet"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x342

    aput-object v1, v0, v2

    const-string/jumbo v1, "xpx"

    const-string v2, "application/vnd.intercon.formnet"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x343

    aput-object v1, v0, v2

    const-string/jumbo v1, "xsl"

    const-string v2, "application/xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x344

    aput-object v1, v0, v2

    const-string/jumbo v1, "xslt"

    const-string v2, "application/xslt+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x345

    aput-object v1, v0, v2

    const-string/jumbo v1, "xsm"

    const-string v2, "application/vnd.syncml+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x346

    aput-object v1, v0, v2

    const-string/jumbo v1, "xspf"

    const-string v2, "application/xspf+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x347

    aput-object v1, v0, v2

    const-string/jumbo v1, "xul"

    const-string v2, "application/vnd.mozilla.xul+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x348

    aput-object v1, v0, v2

    const-string/jumbo v1, "xvm"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x349

    aput-object v1, v0, v2

    const-string/jumbo v1, "xvml"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34a

    aput-object v1, v0, v2

    const-string/jumbo v1, "xwd"

    const-string v2, "image/x-xwindowdump"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34b

    aput-object v1, v0, v2

    const-string/jumbo v1, "xyz"

    const-string v2, "chemical/x-xyz"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34c

    aput-object v1, v0, v2

    const-string/jumbo v1, "z"

    const-string v2, "application/x-compress"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34d

    aput-object v1, v0, v2

    const-string/jumbo v1, "zaz"

    const-string v2, "application/vnd.zzazz.deck+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34e

    aput-object v1, v0, v2

    const-string/jumbo v1, "zip"

    const-string v2, "application/zip"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34f

    aput-object v1, v0, v2

    const-string/jumbo v1, "zir"

    const-string v2, "application/vnd.zul"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x350

    aput-object v1, v0, v2

    const-string/jumbo v1, "zirz"

    const-string v2, "application/vnd.zul"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x351

    aput-object v1, v0, v2

    const-string/jumbo v1, "zmm"

    const-string v2, "application/vnd.handheld-entertainment+xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x352

    aput-object v1, v0, v2

    sput-object v0, Lcom/fsck/k9/helper/FileHelper;->MIME_TYPE_BY_EXTENSION_MAP:[[Ljava/lang/String;

    return-void
.end method

.method public static encodeUtf8(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj$/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    const-string p0, "UTF-8 not found"

    .line 9
    .line 10
    invoke-static {p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public static getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    const/16 v2, 0x353

    .line 10
    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    sget-object v2, Lcom/fsck/k9/helper/FileHelper;->MIME_TYPE_BY_EXTENSION_MAP:[[Ljava/lang/String;

    .line 14
    .line 15
    aget-object v2, v2, v1

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    aget-object v3, v2, v3

    .line 19
    .line 20
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    aget-object p0, v2, v0

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const/16 v1, 0x2e

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, -0x1

    .line 11
    if-eq v2, v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    move-object v1, p0

    .line 39
    :goto_0
    const-string v2, "application/octet-stream"

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-static {v1, v2}, Lcom/fsck/k9/helper/FileHelper;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_1
    if-eqz p0, :cond_3

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    move v3, v1

    .line 54
    :goto_1
    const/16 v4, 0x353

    .line 55
    .line 56
    if-ge v3, v4, :cond_3

    .line 57
    .line 58
    sget-object v4, Lcom/fsck/k9/helper/FileHelper;->MIME_TYPE_BY_EXTENSION_MAP:[[Ljava/lang/String;

    .line 59
    .line 60
    aget-object v4, v4, v3

    .line 61
    .line 62
    aget-object v5, v4, v1

    .line 63
    .line 64
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    aget-object p0, v4, v0

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    return-object v2
.end method

.method public static isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static isSupportedImageType(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "image/jpeg"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/fsck/k9/helper/FileHelper;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "image/png"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/fsck/k9/helper/FileHelper;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "image/gif"

    .line 18
    .line 19
    invoke-static {p0, v0}, Lcom/fsck/k9/helper/FileHelper;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "image/webp"

    .line 26
    .line 27
    invoke-static {p0, v0}, Lcom/fsck/k9/helper/FileHelper;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    return p0

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 37
    return p0
.end method

.method public static final renameOrMoveByCopying(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p1, "Unable to delete file: "

    .line 19
    .line 20
    invoke-static {p1, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    invoke-static {p0, p1, v0}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    new-array p0, p0, [Ljava/lang/Object;

    .line 46
    .line 47
    const-string p1, "Unable to delete source file after copying to destination!"

    .line 48
    .line 49
    invoke-static {p1, p0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public static final toCrLf(Landroid/text/Editable;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const-string v0, "\n"

    .line 10
    .line 11
    const-string v1, "\r\n"

    .line 12
    .line 13
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public static toFriendly(Lcom/fsck/k9/mail/Address;ZZILapp/k9mail/core/android/common/contact/ContactRepository;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    if-eqz p4, :cond_3

    .line 11
    .line 12
    invoke-static {v0}, Lnet/thunderbird/core/common/mail/TokensKt;->toEmailAddressOrNull(Ljava/lang/String;)Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    check-cast p4, Lapp/k9mail/core/android/common/contact/CachingContactRepository;

    .line 20
    .line 21
    invoke-virtual {p4, v1}, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->getContactFor(Lnet/thunderbird/core/common/mail/EmailAddress;)Lapp/k9mail/core/android/common/contact/Contact;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    iget-object v2, p4, Lapp/k9mail/core/android/common/contact/Contact;->name:Ljava/lang/String;

    .line 28
    .line 29
    :cond_1
    if-eqz v2, :cond_3

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    new-instance p0, Landroid/text/SpannableString;

    .line 34
    .line 35
    invoke-direct {p0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    .line 39
    .line 40
    invoke-direct {p2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    const/16 p4, 0x21

    .line 48
    .line 49
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_2
    return-object v2

    .line 54
    :cond_3
    iget-object p0, p0, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz p0, :cond_6

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    const-string p2, "@"

    .line 66
    .line 67
    invoke-static {p0, p2, p1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    sget-object p1, Lcom/fsck/k9/helper/MessageHelper;->SPOOF_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 74
    .line 75
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    return-object p0

    .line 87
    :cond_6
    :goto_0
    return-object v0
.end method

.method public static final touchFile(Ljava/io/File;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, ".nomedia"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const-string v2, "Unable to create file: %s"

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-array v4, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object v3, v4, p0

    .line 31
    .line 32
    invoke-static {v2, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception v2

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    const-string v2, "Unable to change last modification date: %s"

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-array v4, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object v3, v4, p0

    .line 57
    .line 58
    invoke-static {v2, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void

    .line 62
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-array v1, v1, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object v0, v1, p0

    .line 69
    .line 70
    const-string p0, "Unable to touch file: %s"

    .line 71
    .line 72
    invoke-static {v2, p0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
