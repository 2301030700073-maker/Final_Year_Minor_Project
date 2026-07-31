package org.wikipedia.page;

import androidx.compose.animation.core.Animation;
import androidx.room.Room;
import androidx.work.Operation$State;
import kotlin.collections.AbstractCollection;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.model.EnumCode;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Namespace implements EnumCode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Namespace[] $VALUES;
    public static final Namespace ACL;
    public static final Namespace ANNOTATION;
    public static final Namespace ANNOTATION_TALK;
    public static final Namespace BLOG;
    public static final Namespace BLOG_TALK;
    public static final Namespace BOILERPLATE;
    public static final Namespace BOILERPLATE_TALK;
    public static final Namespace BOOK;
    public static final Namespace BOOK_TALK;
    public static final Namespace CAMPAIGN;
    public static final Namespace CAMPAIGN_TALK;
    public static final Namespace CATEGORY;
    public static final Namespace CATEGORY_TALK;
    public static final Namespace CN_BANNER;
    public static final Namespace CN_BANNER_TALK;
    public static final Namespace COMMENT_STREAM;
    public static final Namespace COMMENT_STREAM_TALK;
    public static final Namespace COURSE;
    public static final Namespace COURSE_TALK;
    public static final Companion Companion;
    public static final Namespace DRAFT;
    public static final Namespace DRAFT_TALK;
    public static final Namespace EDUCATION_PROGRAM;
    public static final Namespace EDUCATION_PROGRAM_TALK;
    public static final Namespace EVENT;
    public static final Namespace EVENT_TALK;
    public static final Namespace FILE;
    public static final Namespace FILE_TALK;
    public static final Namespace FILTER;
    public static final Namespace FILTER_TALK;
    public static final Namespace FORM;
    public static final Namespace FORM_TALK;
    public static final Namespace FORUM;
    public static final Namespace FORUM_TALK;
    public static final Namespace GADGET;
    public static final Namespace GADGET_DEFINITION;
    public static final Namespace GADGET_DEFINITION_TALK;
    public static final Namespace GADGET_TALK;
    public static final Namespace GIT_ACCESS_ROOT;
    public static final Namespace GIT_ACCESS_ROOT_TALK;
    public static final Namespace GRAM;
    public static final Namespace GRAM_TALK;
    public static final Namespace GRAPH;
    public static final Namespace GRAPH_TALK;
    public static final Namespace GW_TOOLSET;
    public static final Namespace GW_TOOLSET_TALK;
    public static final Namespace HELP;
    public static final Namespace HELP_TALK;
    public static final Namespace INDEX;
    public static final Namespace INDEX_TALK;
    public static final Namespace INTERPRETATION;
    public static final Namespace INTERPRETATION_TALK;
    public static final Namespace JADE;
    public static final Namespace JADE_TALK;
    public static final Namespace JSON_CONFIG;
    public static final Namespace JSON_CONFIG_TALK;
    public static final Namespace JSON_DATA;
    public static final Namespace JSON_DATA_TALK;
    public static final Namespace JS_APPLET;
    public static final Namespace JS_APPLET_TALK;
    public static final Namespace LINK;
    public static final Namespace LINK_TALK;
    public static final Namespace MAIN;
    public static final Namespace MAPS_LAYER;
    public static final Namespace MAPS_LAYER_TALK;
    public static final Namespace MATH;
    public static final Namespace MATH_TALK;
    public static final Namespace MEDIA;
    public static final Namespace MEDIAWIKI;
    public static final Namespace MEDIAWIKI_TALK;
    public static final Namespace MODULE;
    public static final Namespace MODULE_TALK;
    public static final Namespace MUSTACHE;
    public static final Namespace MUSTACHE_TALK;
    public static final Namespace NOVA_RESOURCE;
    public static final Namespace NOVA_RESOURCE_TALK;
    public static final Namespace PAGE;
    public static final Namespace PAGE_TALK;
    public static final Namespace POLL;
    public static final Namespace POLL_TALK;
    public static final Namespace PORTAL;
    public static final Namespace PORTAL_TALK;
    public static final Namespace PROJECT;
    public static final Namespace PROJECT_TALK;
    public static final Namespace PROPERTY;
    public static final Namespace PROPERTY_TALK;
    public static final Namespace QUIZ;
    public static final Namespace QUIZ_TALK;
    public static final Namespace R;
    public static final Namespace R_TALK;
    public static final Namespace SCHEMA;
    public static final Namespace SCHEMA_TALK;
    public static final Namespace SECURE_POLL;
    public static final Namespace SECURE_POLL_TALK;
    public static final Namespace SPECIAL;
    public static final Namespace SUMMARY;
    public static final Namespace SUMMARY_TALK;
    public static final Namespace TALK;
    private static final int TALK_MASK = 1;
    public static final Namespace TEMPLATE;
    public static final Namespace TEMPLATE_TALK;
    public static final Namespace THREAD;
    public static final Namespace THREAD_TALK;
    public static final Namespace TIMED_TEXT;
    public static final Namespace TIMED_TEXT_TALK;
    public static final Namespace TOPIC;
    public static final Namespace TRANSLATIONS;
    public static final Namespace TRANSLATIONS_TALK;
    public static final Namespace TYPE;
    public static final Namespace TYPE_TALK;
    public static final Namespace USER;
    public static final Namespace USER_BOX;
    public static final Namespace USER_BOX_TALK;
    public static final Namespace USER_GROUP;
    public static final Namespace USER_PROFILE;
    public static final Namespace USER_PROFILE_TALK;
    public static final Namespace USER_TALK;
    public static final Namespace USER_WIKI;
    public static final Namespace USER_WIKI_TALK;
    public static final Namespace WIDGET;
    public static final Namespace WIDGET_TALK;
    private final int code;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        /* JADX WARN: Multi-variable type inference failed */
        public static Namespace of(int i) {
            int i2;
            EnumEntries entries = Namespace.getEntries();
            entries.getClass();
            Integer valueOf = Integer.valueOf(i);
            int size = ((AbstractCollection) entries).getSize();
            Room.rangeCheck$CollectionsKt__CollectionsKt(entries.size(), size);
            int i3 = size - 1;
            int i4 = 0;
            while (true) {
                if (i4 > i3) {
                    i2 = -(i4 + 1);
                    break;
                }
                i2 = (i4 + i3) >>> 1;
                int compareValues = Operation$State.compareValues(Integer.valueOf(((EnumCode) ((Enum) entries.get(i2))).code()), valueOf);
                if (compareValues >= 0) {
                    if (compareValues <= 0) {
                        break;
                    }
                    i3 = i2 - 1;
                } else {
                    i4 = i2 + 1;
                }
            }
            Enum r0 = (Enum) CollectionsKt.getOrNull(entries, i2);
            if (r0 != null) {
                return (Namespace) r0;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "code="));
            return null;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SPECIAL extends Namespace {
        @Override // org.wikipedia.page.Namespace
        public final boolean talk() {
            return false;
        }
    }

    static {
        Namespace namespace = new Namespace("MEDIA", 0, -2);
        MEDIA = namespace;
        SPECIAL special = new SPECIAL("SPECIAL", 1, -1);
        SPECIAL = special;
        Namespace namespace2 = new Namespace("MAIN", 2, 0);
        MAIN = namespace2;
        Namespace namespace3 = new Namespace("TALK", 3, 1);
        TALK = namespace3;
        Namespace namespace4 = new Namespace("USER", 4, 2);
        USER = namespace4;
        Namespace namespace5 = new Namespace("USER_TALK", 5, 3);
        USER_TALK = namespace5;
        Namespace namespace6 = new Namespace("PROJECT", 6, 4);
        PROJECT = namespace6;
        Namespace namespace7 = new Namespace("PROJECT_TALK", 7, 5);
        PROJECT_TALK = namespace7;
        Namespace namespace8 = new Namespace("FILE", 8, 6);
        FILE = namespace8;
        Namespace namespace9 = new Namespace("FILE_TALK", 9, 7);
        FILE_TALK = namespace9;
        Namespace namespace10 = new Namespace("MEDIAWIKI", 10, 8);
        MEDIAWIKI = namespace10;
        Namespace namespace11 = new Namespace("MEDIAWIKI_TALK", 11, 9);
        MEDIAWIKI_TALK = namespace11;
        Namespace namespace12 = new Namespace("TEMPLATE", 12, 10);
        TEMPLATE = namespace12;
        Namespace namespace13 = new Namespace("TEMPLATE_TALK", 13, 11);
        TEMPLATE_TALK = namespace13;
        Namespace namespace14 = new Namespace("HELP", 14, 12);
        HELP = namespace14;
        Namespace namespace15 = new Namespace("HELP_TALK", 15, 13);
        HELP_TALK = namespace15;
        Namespace namespace16 = new Namespace("CATEGORY", 16, 14);
        CATEGORY = namespace16;
        Namespace namespace17 = new Namespace("CATEGORY_TALK", 17, 15);
        CATEGORY_TALK = namespace17;
        Namespace namespace18 = new Namespace("THREAD", 18, 90);
        THREAD = namespace18;
        Namespace namespace19 = new Namespace("THREAD_TALK", 19, 91);
        THREAD_TALK = namespace19;
        Namespace namespace20 = new Namespace("SUMMARY", 20, 92);
        SUMMARY = namespace20;
        Namespace namespace21 = new Namespace("SUMMARY_TALK", 21, 93);
        SUMMARY_TALK = namespace21;
        Namespace namespace22 = new Namespace("PORTAL", 22, 100);
        PORTAL = namespace22;
        Namespace namespace23 = new Namespace("PORTAL_TALK", 23, 101);
        PORTAL_TALK = namespace23;
        Namespace namespace24 = new Namespace("PROPERTY", 24, 102);
        PROPERTY = namespace24;
        Namespace namespace25 = new Namespace("PROPERTY_TALK", 25, 103);
        PROPERTY_TALK = namespace25;
        Namespace namespace26 = new Namespace("TYPE", 26, 104);
        TYPE = namespace26;
        Namespace namespace27 = new Namespace("TYPE_TALK", 27, 105);
        TYPE_TALK = namespace27;
        Namespace namespace28 = new Namespace("FORM", 28, 106);
        FORM = namespace28;
        Namespace namespace29 = new Namespace("FORM_TALK", 29, 107);
        FORM_TALK = namespace29;
        Namespace namespace30 = new Namespace("BOOK", 30, 108);
        BOOK = namespace30;
        Namespace namespace31 = new Namespace("BOOK_TALK", 31, 109);
        BOOK_TALK = namespace31;
        Namespace namespace32 = new Namespace("FORUM", 32, 110);
        FORUM = namespace32;
        Namespace namespace33 = new Namespace("FORUM_TALK", 33, 111);
        FORUM_TALK = namespace33;
        Namespace namespace34 = new Namespace("DRAFT", 34, 118);
        DRAFT = namespace34;
        Namespace namespace35 = new Namespace("DRAFT_TALK", 35, 119);
        DRAFT_TALK = namespace35;
        Namespace namespace36 = new Namespace("USER_GROUP", 36, 160);
        USER_GROUP = namespace36;
        Namespace namespace37 = new Namespace("ACL", 37, 162);
        ACL = namespace37;
        Namespace namespace38 = new Namespace("FILTER", 38, 170);
        FILTER = namespace38;
        Namespace namespace39 = new Namespace("FILTER_TALK", 39, 171);
        FILTER_TALK = namespace39;
        Namespace namespace40 = new Namespace("USER_WIKI", 40, 200);
        USER_WIKI = namespace40;
        Namespace namespace41 = new Namespace("USER_WIKI_TALK", 41, 201);
        USER_WIKI_TALK = namespace41;
        Namespace namespace42 = new Namespace("USER_PROFILE", 42, 202);
        USER_PROFILE = namespace42;
        Namespace namespace43 = new Namespace("USER_PROFILE_TALK", 43, 203);
        USER_PROFILE_TALK = namespace43;
        Namespace namespace44 = new Namespace("ANNOTATION", 44, 248);
        ANNOTATION = namespace44;
        Namespace namespace45 = new Namespace("ANNOTATION_TALK", 45, 249);
        ANNOTATION_TALK = namespace45;
        Namespace namespace46 = new Namespace("PAGE", 46, 250);
        PAGE = namespace46;
        Namespace namespace47 = new Namespace("PAGE_TALK", 47, 251);
        PAGE_TALK = namespace47;
        Namespace namespace48 = new Namespace("INDEX", 48, 252);
        INDEX = namespace48;
        Namespace namespace49 = new Namespace("INDEX_TALK", 49, 253);
        INDEX_TALK = namespace49;
        Namespace namespace50 = new Namespace("MATH", 50, 262);
        MATH = namespace50;
        Namespace namespace51 = new Namespace("MATH_TALK", 51, 263);
        MATH_TALK = namespace51;
        Namespace namespace52 = new Namespace("WIDGET", 52, 274);
        WIDGET = namespace52;
        Namespace namespace53 = new Namespace("WIDGET_TALK", 53, 275);
        WIDGET_TALK = namespace53;
        Namespace namespace54 = new Namespace("JS_APPLET", 54, 280);
        JS_APPLET = namespace54;
        Namespace namespace55 = new Namespace("JS_APPLET_TALK", 55, 281);
        JS_APPLET_TALK = namespace55;
        Namespace namespace56 = new Namespace("POLL", 56, 300);
        POLL = namespace56;
        Namespace namespace57 = new Namespace("POLL_TALK", 57, 301);
        POLL_TALK = namespace57;
        Namespace namespace58 = new Namespace("COURSE", 58, 350);
        COURSE = namespace58;
        Namespace namespace59 = new Namespace("COURSE_TALK", 59, 351);
        COURSE_TALK = namespace59;
        Namespace namespace60 = new Namespace("MAPS_LAYER", 60, 420);
        MAPS_LAYER = namespace60;
        Namespace namespace61 = new Namespace("MAPS_LAYER_TALK", 61, 421);
        MAPS_LAYER_TALK = namespace61;
        Namespace namespace62 = new Namespace("QUIZ", 62, 430);
        QUIZ = namespace62;
        Namespace namespace63 = new Namespace("QUIZ_TALK", 63, 431);
        QUIZ_TALK = namespace63;
        Namespace namespace64 = new Namespace("EDUCATION_PROGRAM", 64, 446);
        EDUCATION_PROGRAM = namespace64;
        Namespace namespace65 = new Namespace("EDUCATION_PROGRAM_TALK", 65, 447);
        EDUCATION_PROGRAM_TALK = namespace65;
        Namespace namespace66 = new Namespace("BOILERPLATE", 66, 450);
        BOILERPLATE = namespace66;
        Namespace namespace67 = new Namespace("BOILERPLATE_TALK", 67, 451);
        BOILERPLATE_TALK = namespace67;
        Namespace namespace68 = new Namespace("CAMPAIGN", 68, 460);
        CAMPAIGN = namespace68;
        Namespace namespace69 = new Namespace("CAMPAIGN_TALK", 69, 461);
        CAMPAIGN_TALK = namespace69;
        Namespace namespace70 = new Namespace("SCHEMA", 70, 470);
        SCHEMA = namespace70;
        Namespace namespace71 = new Namespace("SCHEMA_TALK", 71, 471);
        SCHEMA_TALK = namespace71;
        Namespace namespace72 = new Namespace("JSON_CONFIG", 72, 482);
        JSON_CONFIG = namespace72;
        Namespace namespace73 = new Namespace("JSON_CONFIG_TALK", 73, 483);
        JSON_CONFIG_TALK = namespace73;
        Namespace namespace74 = new Namespace("GRAPH", 74, 484);
        GRAPH = namespace74;
        Namespace namespace75 = new Namespace("GRAPH_TALK", 75, 485);
        GRAPH_TALK = namespace75;
        Namespace namespace76 = new Namespace("JSON_DATA", 76, 486);
        JSON_DATA = namespace76;
        Namespace namespace77 = new Namespace("JSON_DATA_TALK", 77, 487);
        JSON_DATA_TALK = namespace77;
        Namespace namespace78 = new Namespace("NOVA_RESOURCE", 78, 488);
        NOVA_RESOURCE = namespace78;
        Namespace namespace79 = new Namespace("NOVA_RESOURCE_TALK", 79, 489);
        NOVA_RESOURCE_TALK = namespace79;
        Namespace namespace80 = new Namespace("GW_TOOLSET", 80, 490);
        GW_TOOLSET = namespace80;
        Namespace namespace81 = new Namespace("GW_TOOLSET_TALK", 81, 491);
        GW_TOOLSET_TALK = namespace81;
        Namespace namespace82 = new Namespace("BLOG", 82, 500);
        BLOG = namespace82;
        Namespace namespace83 = new Namespace("BLOG_TALK", 83, 501);
        BLOG_TALK = namespace83;
        Namespace namespace84 = new Namespace("USER_BOX", 84, 600);
        USER_BOX = namespace84;
        Namespace namespace85 = new Namespace("USER_BOX_TALK", 85, 601);
        USER_BOX_TALK = namespace85;
        Namespace namespace86 = new Namespace("LINK", 86, 700);
        LINK = namespace86;
        Namespace namespace87 = new Namespace("LINK_TALK", 87, 701);
        LINK_TALK = namespace87;
        Namespace namespace88 = new Namespace("TIMED_TEXT", 88, 710);
        TIMED_TEXT = namespace88;
        Namespace namespace89 = new Namespace("TIMED_TEXT_TALK", 89, 711);
        TIMED_TEXT_TALK = namespace89;
        Namespace namespace90 = new Namespace("GIT_ACCESS_ROOT", 90, 730);
        GIT_ACCESS_ROOT = namespace90;
        Namespace namespace91 = new Namespace("GIT_ACCESS_ROOT_TALK", 91, 731);
        GIT_ACCESS_ROOT_TALK = namespace91;
        Namespace namespace92 = new Namespace("INTERPRETATION", 92, 800);
        INTERPRETATION = namespace92;
        Namespace namespace93 = new Namespace("INTERPRETATION_TALK", 93, 801);
        INTERPRETATION_TALK = namespace93;
        Namespace namespace94 = new Namespace("MUSTACHE", 94, 806);
        MUSTACHE = namespace94;
        Namespace namespace95 = new Namespace("MUSTACHE_TALK", 95, 807);
        MUSTACHE_TALK = namespace95;
        Namespace namespace96 = new Namespace("JADE", 96, 810);
        JADE = namespace96;
        Namespace namespace97 = new Namespace("JADE_TALK", 97, 811);
        JADE_TALK = namespace97;
        Namespace namespace98 = new Namespace("R", 98, 814);
        R = namespace98;
        Namespace namespace99 = new Namespace("R_TALK", 99, 815);
        R_TALK = namespace99;
        Namespace namespace100 = new Namespace("MODULE", 100, 828);
        MODULE = namespace100;
        Namespace namespace101 = new Namespace("MODULE_TALK", 101, 829);
        MODULE_TALK = namespace101;
        Namespace namespace102 = new Namespace("SECURE_POLL", 102, 830);
        SECURE_POLL = namespace102;
        Namespace namespace103 = new Namespace("SECURE_POLL_TALK", 103, 831);
        SECURE_POLL_TALK = namespace103;
        Namespace namespace104 = new Namespace("COMMENT_STREAM", 104, 844);
        COMMENT_STREAM = namespace104;
        Namespace namespace105 = new Namespace("COMMENT_STREAM_TALK", 105, 845);
        COMMENT_STREAM_TALK = namespace105;
        Namespace namespace106 = new Namespace("CN_BANNER", 106, 866);
        CN_BANNER = namespace106;
        Namespace namespace107 = new Namespace("CN_BANNER_TALK", 107, 867);
        CN_BANNER_TALK = namespace107;
        Namespace namespace108 = new Namespace("GRAM", 108, 1024);
        GRAM = namespace108;
        Namespace namespace109 = new Namespace("GRAM_TALK", 109, 1025);
        GRAM_TALK = namespace109;
        Namespace namespace110 = new Namespace("TRANSLATIONS", 110, 1198);
        TRANSLATIONS = namespace110;
        Namespace namespace111 = new Namespace("TRANSLATIONS_TALK", 111, 1199);
        TRANSLATIONS_TALK = namespace111;
        Namespace namespace112 = new Namespace("EVENT", 112, 1728);
        EVENT = namespace112;
        Namespace namespace113 = new Namespace("EVENT_TALK", 113, 1729);
        EVENT_TALK = namespace113;
        Namespace namespace114 = new Namespace("GADGET", 114, 2300);
        GADGET = namespace114;
        Namespace namespace115 = new Namespace("GADGET_TALK", 115, 2301);
        GADGET_TALK = namespace115;
        Namespace namespace116 = new Namespace("GADGET_DEFINITION", 116, 2302);
        GADGET_DEFINITION = namespace116;
        Namespace namespace117 = new Namespace("GADGET_DEFINITION_TALK", 117, 2303);
        GADGET_DEFINITION_TALK = namespace117;
        Namespace namespace118 = new Namespace("TOPIC", 118, 2600);
        TOPIC = namespace118;
        Namespace[] namespaceArr = {namespace, special, namespace2, namespace3, namespace4, namespace5, namespace6, namespace7, namespace8, namespace9, namespace10, namespace11, namespace12, namespace13, namespace14, namespace15, namespace16, namespace17, namespace18, namespace19, namespace20, namespace21, namespace22, namespace23, namespace24, namespace25, namespace26, namespace27, namespace28, namespace29, namespace30, namespace31, namespace32, namespace33, namespace34, namespace35, namespace36, namespace37, namespace38, namespace39, namespace40, namespace41, namespace42, namespace43, namespace44, namespace45, namespace46, namespace47, namespace48, namespace49, namespace50, namespace51, namespace52, namespace53, namespace54, namespace55, namespace56, namespace57, namespace58, namespace59, namespace60, namespace61, namespace62, namespace63, namespace64, namespace65, namespace66, namespace67, namespace68, namespace69, namespace70, namespace71, namespace72, namespace73, namespace74, namespace75, namespace76, namespace77, namespace78, namespace79, namespace80, namespace81, namespace82, namespace83, namespace84, namespace85, namespace86, namespace87, namespace88, namespace89, namespace90, namespace91, namespace92, namespace93, namespace94, namespace95, namespace96, namespace97, namespace98, namespace99, namespace100, namespace101, namespace102, namespace103, namespace104, namespace105, namespace106, namespace107, namespace108, namespace109, namespace110, namespace111, namespace112, namespace113, namespace114, namespace115, namespace116, namespace117, namespace118};
        $VALUES = namespaceArr;
        $ENTRIES = new EnumEntriesList(namespaceArr);
        Companion = new Companion();
    }

    public Namespace(String str, int i, int i2) {
        this.code = i2;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static Namespace valueOf(String str) {
        return (Namespace) Enum.valueOf(Namespace.class, str);
    }

    public static Namespace[] values() {
        return (Namespace[]) $VALUES.clone();
    }

    @Override // org.wikipedia.model.EnumCode
    public final int code() {
        return this.code;
    }

    public boolean talk() {
        return (this.code & 1) == 1;
    }
}
