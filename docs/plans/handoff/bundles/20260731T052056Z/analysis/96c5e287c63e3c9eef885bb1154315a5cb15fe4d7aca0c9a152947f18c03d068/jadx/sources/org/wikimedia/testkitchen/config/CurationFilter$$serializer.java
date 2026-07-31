package org.wikimedia.testkitchen.config;

import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikimedia.testkitchen.config.curation.CollectionCurationRules;
import org.wikimedia.testkitchen.config.curation.ComparableCurationRules;
import org.wikimedia.testkitchen.config.curation.CurationRules;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class CurationFilter$$serializer implements GeneratedSerializer {
    public static final CurationFilter$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        CurationFilter$$serializer curationFilter$$serializer = new CurationFilter$$serializer();
        INSTANCE = curationFilter$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikimedia.testkitchen.config.CurationFilter", curationFilter$$serializer, 28);
        pluginGeneratedSerialDescriptor.addElement("agent_app_install_id", true);
        pluginGeneratedSerialDescriptor.addElement("agent_client_platform", true);
        pluginGeneratedSerialDescriptor.addElement("agent_client_platform_family", true);
        pluginGeneratedSerialDescriptor.addElement("agent_app_flavor", true);
        pluginGeneratedSerialDescriptor.addElement("agent_app_theme", true);
        pluginGeneratedSerialDescriptor.addElement("agent_app_version", true);
        pluginGeneratedSerialDescriptor.addElement("agent_app_version_name", true);
        pluginGeneratedSerialDescriptor.addElement("agent_device_family", true);
        pluginGeneratedSerialDescriptor.addElement("agent_device_language", true);
        pluginGeneratedSerialDescriptor.addElement("agent_release_status", true);
        pluginGeneratedSerialDescriptor.addElement("mediawiki_database", true);
        pluginGeneratedSerialDescriptor.addElement("page_id", true);
        pluginGeneratedSerialDescriptor.addElement("page_namespace_id", true);
        pluginGeneratedSerialDescriptor.addElement("page_namespace_name", true);
        pluginGeneratedSerialDescriptor.addElement("page_title", true);
        pluginGeneratedSerialDescriptor.addElement("page_revision_id", true);
        pluginGeneratedSerialDescriptor.addElement("page_wikidata_qid", true);
        pluginGeneratedSerialDescriptor.addElement("page_content_language", true);
        pluginGeneratedSerialDescriptor.addElement("performer_id", true);
        pluginGeneratedSerialDescriptor.addElement("performer_name", true);
        pluginGeneratedSerialDescriptor.addElement("performer_session_id", true);
        pluginGeneratedSerialDescriptor.addElement("performer_pageview_id", true);
        pluginGeneratedSerialDescriptor.addElement("performer_groups", true);
        pluginGeneratedSerialDescriptor.addElement("performer_is_logged_in", true);
        pluginGeneratedSerialDescriptor.addElement("performer_is_temp", true);
        pluginGeneratedSerialDescriptor.addElement("performer_registration_dt", true);
        pluginGeneratedSerialDescriptor.addElement("performer_language_groups", true);
        pluginGeneratedSerialDescriptor.addElement("performer_language_primary", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = CurationFilter.$childSerializers;
        return new KSerializer[]{UnsignedKt.getNullable((KSerializer) lazyArr[0].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[1].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[2].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[3].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[4].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[5].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[6].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[7].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[8].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[9].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[10].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[11].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[12].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[13].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[14].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[15].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[16].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[17].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[18].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[19].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[20].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[21].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[22].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[23].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[24].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[25].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[26].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[27].getValue())};
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [org.wikimedia.testkitchen.config.curation.CollectionCurationRules, org.wikimedia.testkitchen.config.curation.ComparableCurationRules, org.wikimedia.testkitchen.config.curation.CurationRules] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r9v101 */
    /* JADX WARN: Type inference failed for: r9v103 */
    /* JADX WARN: Type inference failed for: r9v105 */
    /* JADX WARN: Type inference failed for: r9v107 */
    /* JADX WARN: Type inference failed for: r9v109 */
    /* JADX WARN: Type inference failed for: r9v111 */
    /* JADX WARN: Type inference failed for: r9v113 */
    /* JADX WARN: Type inference failed for: r9v121 */
    /* JADX WARN: Type inference failed for: r9v89 */
    /* JADX WARN: Type inference failed for: r9v92 */
    /* JADX WARN: Type inference failed for: r9v95 */
    /* JADX WARN: Type inference failed for: r9v98 */
    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        ?? r1;
        CurationRules curationRules;
        CurationRules curationRules2;
        CurationRules curationRules3;
        CurationRules curationRules4;
        ComparableCurationRules comparableCurationRules;
        CurationRules curationRules5;
        CurationRules curationRules6;
        CollectionCurationRules collectionCurationRules;
        CurationRules curationRules7;
        CurationRules curationRules8;
        CurationRules curationRules9;
        ComparableCurationRules comparableCurationRules2;
        int i;
        CurationRules curationRules10;
        CurationRules curationRules11;
        CurationRules curationRules12;
        CurationRules curationRules13;
        CurationRules curationRules14;
        CurationRules curationRules15;
        ComparableCurationRules comparableCurationRules3;
        CurationRules curationRules16;
        CurationRules curationRules17;
        CurationRules curationRules18;
        CurationRules curationRules19;
        CurationRules curationRules20;
        char c;
        CurationRules curationRules21;
        ComparableCurationRules comparableCurationRules4;
        CurationRules curationRules22;
        ComparableCurationRules comparableCurationRules5;
        CurationRules curationRules23;
        CurationRules curationRules24;
        CurationRules curationRules25;
        CurationRules curationRules26;
        CurationRules curationRules27;
        CurationRules curationRules28;
        ComparableCurationRules comparableCurationRules6;
        CurationRules curationRules29;
        CurationRules curationRules30;
        CurationRules curationRules31;
        CurationRules curationRules32;
        CurationRules curationRules33;
        CurationRules curationRules34;
        CurationRules curationRules35;
        CurationRules curationRules36;
        ComparableCurationRules comparableCurationRules7;
        char c2;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = CurationFilter.$childSerializers;
        int i2 = 0;
        CurationRules curationRules37 = null;
        CurationRules curationRules38 = null;
        CollectionCurationRules collectionCurationRules2 = null;
        CurationRules curationRules39 = null;
        ComparableCurationRules comparableCurationRules8 = null;
        CurationRules curationRules40 = null;
        CurationRules curationRules41 = null;
        CurationRules curationRules42 = null;
        ComparableCurationRules comparableCurationRules9 = null;
        CurationRules curationRules43 = null;
        CurationRules curationRules44 = null;
        ComparableCurationRules comparableCurationRules10 = null;
        CurationRules curationRules45 = null;
        CurationRules curationRules46 = null;
        int i3 = 1;
        CurationRules curationRules47 = null;
        CurationRules curationRules48 = null;
        CurationRules curationRules49 = null;
        CurationRules curationRules50 = null;
        CurationRules curationRules51 = null;
        CurationRules curationRules52 = null;
        CurationRules curationRules53 = null;
        CurationRules curationRules54 = null;
        CurationRules curationRules55 = null;
        CurationRules curationRules56 = null;
        CurationRules curationRules57 = null;
        ComparableCurationRules comparableCurationRules11 = null;
        ComparableCurationRules comparableCurationRules12 = null;
        CurationRules curationRules58 = null;
        char c3 = 0;
        while (i3 != 0) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    curationRules = curationRules40;
                    curationRules2 = curationRules41;
                    curationRules3 = curationRules50;
                    curationRules4 = curationRules51;
                    comparableCurationRules = comparableCurationRules12;
                    curationRules5 = curationRules58;
                    curationRules6 = curationRules38;
                    collectionCurationRules = collectionCurationRules2;
                    curationRules7 = curationRules42;
                    curationRules8 = curationRules47;
                    curationRules9 = curationRules48;
                    comparableCurationRules2 = comparableCurationRules11;
                    i = i2;
                    curationRules10 = curationRules39;
                    curationRules11 = curationRules57;
                    curationRules12 = curationRules46;
                    curationRules13 = curationRules56;
                    curationRules14 = curationRules45;
                    curationRules15 = curationRules55;
                    comparableCurationRules3 = comparableCurationRules10;
                    curationRules16 = curationRules54;
                    curationRules17 = curationRules44;
                    curationRules18 = curationRules53;
                    curationRules19 = curationRules43;
                    curationRules20 = curationRules52;
                    i3 = i;
                    c = c3;
                    comparableCurationRules9 = comparableCurationRules9;
                    curationRules37 = curationRules37;
                    curationRules52 = curationRules20;
                    curationRules21 = curationRules5;
                    curationRules43 = curationRules19;
                    curationRules50 = curationRules3;
                    curationRules53 = curationRules18;
                    curationRules44 = curationRules17;
                    curationRules41 = curationRules2;
                    curationRules54 = curationRules16;
                    comparableCurationRules10 = comparableCurationRules3;
                    curationRules55 = curationRules15;
                    curationRules45 = curationRules14;
                    curationRules56 = curationRules13;
                    curationRules46 = curationRules12;
                    curationRules57 = curationRules11;
                    curationRules39 = curationRules10;
                    comparableCurationRules11 = comparableCurationRules2;
                    curationRules47 = curationRules8;
                    curationRules38 = curationRules6;
                    comparableCurationRules4 = comparableCurationRules;
                    curationRules22 = curationRules9;
                    curationRules42 = curationRules7;
                    curationRules51 = curationRules4;
                    curationRules40 = curationRules;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 0:
                    curationRules = curationRules40;
                    curationRules2 = curationRules41;
                    curationRules3 = curationRules50;
                    curationRules4 = curationRules51;
                    curationRules5 = curationRules58;
                    curationRules6 = curationRules38;
                    curationRules7 = curationRules42;
                    curationRules9 = curationRules48;
                    comparableCurationRules = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    ComparableCurationRules comparableCurationRules13 = comparableCurationRules11;
                    curationRules10 = curationRules39;
                    curationRules11 = curationRules57;
                    curationRules12 = curationRules46;
                    curationRules13 = curationRules56;
                    curationRules14 = curationRules45;
                    curationRules15 = curationRules55;
                    comparableCurationRules3 = comparableCurationRules10;
                    curationRules16 = curationRules54;
                    curationRules17 = curationRules44;
                    curationRules18 = curationRules53;
                    curationRules19 = curationRules43;
                    curationRules20 = curationRules52;
                    CurationRules curationRules59 = curationRules47;
                    comparableCurationRules2 = comparableCurationRules13;
                    i = i2;
                    curationRules8 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, i, (KSerializer) lazyArr[i2].getValue(), curationRules59);
                    c = (c3 | 1) == true ? 1 : 0;
                    comparableCurationRules9 = comparableCurationRules9;
                    curationRules37 = curationRules37;
                    comparableCurationRules8 = comparableCurationRules8;
                    curationRules52 = curationRules20;
                    curationRules21 = curationRules5;
                    curationRules43 = curationRules19;
                    curationRules50 = curationRules3;
                    curationRules53 = curationRules18;
                    curationRules44 = curationRules17;
                    curationRules41 = curationRules2;
                    curationRules54 = curationRules16;
                    comparableCurationRules10 = comparableCurationRules3;
                    curationRules55 = curationRules15;
                    curationRules45 = curationRules14;
                    curationRules56 = curationRules13;
                    curationRules46 = curationRules12;
                    curationRules57 = curationRules11;
                    curationRules39 = curationRules10;
                    comparableCurationRules11 = comparableCurationRules2;
                    curationRules47 = curationRules8;
                    curationRules38 = curationRules6;
                    comparableCurationRules4 = comparableCurationRules;
                    curationRules22 = curationRules9;
                    curationRules42 = curationRules7;
                    curationRules51 = curationRules4;
                    curationRules40 = curationRules;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 1:
                    CurationRules curationRules60 = curationRules40;
                    CurationRules curationRules61 = curationRules41;
                    CurationRules curationRules62 = curationRules50;
                    CurationRules curationRules63 = curationRules51;
                    CurationRules curationRules64 = curationRules58;
                    CurationRules curationRules65 = curationRules38;
                    CurationRules curationRules66 = curationRules42;
                    ComparableCurationRules comparableCurationRules14 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    comparableCurationRules5 = comparableCurationRules11;
                    curationRules23 = curationRules39;
                    curationRules24 = curationRules57;
                    curationRules25 = curationRules46;
                    curationRules26 = curationRules56;
                    curationRules27 = curationRules45;
                    curationRules28 = curationRules55;
                    ComparableCurationRules comparableCurationRules15 = comparableCurationRules10;
                    CurationRules curationRules67 = curationRules54;
                    CurationRules curationRules68 = curationRules44;
                    CurationRules curationRules69 = curationRules53;
                    CurationRules curationRules70 = curationRules43;
                    CurationRules curationRules71 = curationRules52;
                    CurationRules curationRules72 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, (KSerializer) lazyArr[1].getValue(), curationRules48);
                    c = (c3 | 2) == true ? 1 : 0;
                    comparableCurationRules9 = comparableCurationRules9;
                    curationRules38 = curationRules65;
                    curationRules37 = curationRules37;
                    comparableCurationRules8 = comparableCurationRules8;
                    curationRules52 = curationRules71;
                    comparableCurationRules4 = comparableCurationRules14;
                    curationRules21 = curationRules64;
                    curationRules43 = curationRules70;
                    curationRules50 = curationRules62;
                    curationRules22 = curationRules72;
                    curationRules53 = curationRules69;
                    curationRules42 = curationRules66;
                    curationRules44 = curationRules68;
                    curationRules41 = curationRules61;
                    curationRules51 = curationRules63;
                    curationRules54 = curationRules67;
                    comparableCurationRules10 = comparableCurationRules15;
                    curationRules40 = curationRules60;
                    curationRules55 = curationRules28;
                    curationRules45 = curationRules27;
                    curationRules56 = curationRules26;
                    curationRules46 = curationRules25;
                    curationRules57 = curationRules24;
                    curationRules39 = curationRules23;
                    comparableCurationRules11 = comparableCurationRules5;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 2:
                    char c4 = c3;
                    CurationRules curationRules73 = curationRules37;
                    CurationRules curationRules74 = curationRules58;
                    CurationRules curationRules75 = curationRules38;
                    ComparableCurationRules comparableCurationRules16 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    comparableCurationRules5 = comparableCurationRules11;
                    curationRules23 = curationRules39;
                    curationRules24 = curationRules57;
                    curationRules25 = curationRules46;
                    curationRules26 = curationRules56;
                    curationRules27 = curationRules45;
                    curationRules28 = curationRules55;
                    comparableCurationRules6 = comparableCurationRules10;
                    curationRules29 = curationRules54;
                    curationRules30 = curationRules44;
                    curationRules31 = curationRules53;
                    CurationRules curationRules76 = curationRules40;
                    curationRules32 = curationRules41;
                    comparableCurationRules4 = comparableCurationRules16;
                    curationRules38 = curationRules75;
                    curationRules49 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), curationRules49);
                    c = (c4 | 4) == true ? 1 : 0;
                    curationRules22 = curationRules48;
                    curationRules42 = curationRules42;
                    comparableCurationRules9 = comparableCurationRules9;
                    curationRules37 = curationRules73;
                    comparableCurationRules8 = comparableCurationRules8;
                    curationRules51 = curationRules51;
                    curationRules52 = curationRules52;
                    curationRules21 = curationRules74;
                    curationRules43 = curationRules43;
                    curationRules40 = curationRules76;
                    curationRules50 = curationRules50;
                    curationRules53 = curationRules31;
                    curationRules44 = curationRules30;
                    curationRules41 = curationRules32;
                    curationRules54 = curationRules29;
                    comparableCurationRules10 = comparableCurationRules6;
                    curationRules55 = curationRules28;
                    curationRules45 = curationRules27;
                    curationRules56 = curationRules26;
                    curationRules46 = curationRules25;
                    curationRules57 = curationRules24;
                    curationRules39 = curationRules23;
                    comparableCurationRules11 = comparableCurationRules5;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 3:
                    char c5 = c3;
                    CurationRules curationRules77 = curationRules37;
                    CurationRules curationRules78 = curationRules58;
                    CurationRules curationRules79 = curationRules38;
                    ComparableCurationRules comparableCurationRules17 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    comparableCurationRules5 = comparableCurationRules11;
                    curationRules23 = curationRules39;
                    curationRules24 = curationRules57;
                    curationRules25 = curationRules46;
                    curationRules26 = curationRules56;
                    curationRules27 = curationRules45;
                    curationRules28 = curationRules55;
                    comparableCurationRules6 = comparableCurationRules10;
                    curationRules29 = curationRules54;
                    curationRules33 = curationRules44;
                    curationRules34 = curationRules53;
                    ComparableCurationRules comparableCurationRules18 = comparableCurationRules8;
                    CurationRules curationRules80 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, (KSerializer) lazyArr[3].getValue(), curationRules50);
                    curationRules21 = curationRules78;
                    curationRules37 = curationRules77;
                    comparableCurationRules4 = comparableCurationRules17;
                    curationRules38 = curationRules79;
                    curationRules50 = curationRules80;
                    c = (c5 | '\b') == true ? 1 : 0;
                    curationRules22 = curationRules48;
                    curationRules42 = curationRules42;
                    comparableCurationRules9 = comparableCurationRules9;
                    comparableCurationRules8 = comparableCurationRules18;
                    curationRules41 = curationRules41;
                    curationRules51 = curationRules51;
                    curationRules52 = curationRules52;
                    curationRules43 = curationRules43;
                    curationRules40 = curationRules40;
                    curationRules53 = curationRules34;
                    curationRules44 = curationRules33;
                    curationRules54 = curationRules29;
                    comparableCurationRules10 = comparableCurationRules6;
                    curationRules55 = curationRules28;
                    curationRules45 = curationRules27;
                    curationRules56 = curationRules26;
                    curationRules46 = curationRules25;
                    curationRules57 = curationRules24;
                    curationRules39 = curationRules23;
                    comparableCurationRules11 = comparableCurationRules5;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 4:
                    ComparableCurationRules comparableCurationRules19 = comparableCurationRules8;
                    CurationRules curationRules81 = curationRules40;
                    ComparableCurationRules comparableCurationRules20 = comparableCurationRules9;
                    char c6 = c3;
                    CurationRules curationRules82 = curationRules37;
                    CurationRules curationRules83 = curationRules58;
                    CurationRules curationRules84 = curationRules38;
                    ComparableCurationRules comparableCurationRules21 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    comparableCurationRules5 = comparableCurationRules11;
                    curationRules23 = curationRules39;
                    curationRules24 = curationRules57;
                    curationRules25 = curationRules46;
                    curationRules26 = curationRules56;
                    curationRules27 = curationRules45;
                    curationRules28 = curationRules55;
                    comparableCurationRules6 = comparableCurationRules10;
                    curationRules29 = curationRules54;
                    curationRules33 = curationRules44;
                    curationRules34 = curationRules53;
                    CurationRules curationRules85 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), curationRules51);
                    curationRules21 = curationRules83;
                    curationRules37 = curationRules82;
                    comparableCurationRules4 = comparableCurationRules21;
                    curationRules38 = curationRules84;
                    curationRules51 = curationRules85;
                    c = (c6 | 16) == true ? 1 : 0;
                    curationRules42 = curationRules42;
                    curationRules22 = curationRules48;
                    comparableCurationRules9 = comparableCurationRules20;
                    comparableCurationRules8 = comparableCurationRules19;
                    curationRules41 = curationRules41;
                    curationRules40 = curationRules81;
                    curationRules52 = curationRules52;
                    curationRules43 = curationRules43;
                    curationRules53 = curationRules34;
                    curationRules44 = curationRules33;
                    curationRules54 = curationRules29;
                    comparableCurationRules10 = comparableCurationRules6;
                    curationRules55 = curationRules28;
                    curationRules45 = curationRules27;
                    curationRules56 = curationRules26;
                    curationRules46 = curationRules25;
                    curationRules57 = curationRules24;
                    curationRules39 = curationRules23;
                    comparableCurationRules11 = comparableCurationRules5;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 5:
                    ComparableCurationRules comparableCurationRules22 = comparableCurationRules8;
                    CurationRules curationRules86 = curationRules40;
                    curationRules32 = curationRules41;
                    CurationRules curationRules87 = curationRules42;
                    ComparableCurationRules comparableCurationRules23 = comparableCurationRules9;
                    char c7 = c3;
                    CurationRules curationRules88 = curationRules37;
                    CurationRules curationRules89 = curationRules58;
                    CurationRules curationRules90 = curationRules38;
                    ComparableCurationRules comparableCurationRules24 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    comparableCurationRules5 = comparableCurationRules11;
                    curationRules23 = curationRules39;
                    curationRules24 = curationRules57;
                    curationRules25 = curationRules46;
                    curationRules26 = curationRules56;
                    curationRules27 = curationRules45;
                    curationRules28 = curationRules55;
                    comparableCurationRules6 = comparableCurationRules10;
                    curationRules29 = curationRules54;
                    curationRules30 = curationRules44;
                    curationRules31 = curationRules53;
                    CurationRules curationRules91 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, (KSerializer) lazyArr[5].getValue(), curationRules52);
                    int i4 = c7 | ' ';
                    curationRules21 = curationRules89;
                    curationRules37 = curationRules88;
                    comparableCurationRules4 = comparableCurationRules24;
                    curationRules38 = curationRules90;
                    curationRules52 = curationRules91;
                    comparableCurationRules9 = comparableCurationRules23;
                    c = i4 == true ? 1 : 0;
                    curationRules22 = curationRules48;
                    curationRules43 = curationRules43;
                    comparableCurationRules8 = comparableCurationRules22;
                    curationRules40 = curationRules86;
                    curationRules42 = curationRules87;
                    curationRules53 = curationRules31;
                    curationRules44 = curationRules30;
                    curationRules41 = curationRules32;
                    curationRules54 = curationRules29;
                    comparableCurationRules10 = comparableCurationRules6;
                    curationRules55 = curationRules28;
                    curationRules45 = curationRules27;
                    curationRules56 = curationRules26;
                    curationRules46 = curationRules25;
                    curationRules57 = curationRules24;
                    curationRules39 = curationRules23;
                    comparableCurationRules11 = comparableCurationRules5;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 6:
                    ComparableCurationRules comparableCurationRules25 = comparableCurationRules8;
                    CurationRules curationRules92 = curationRules40;
                    CurationRules curationRules93 = curationRules41;
                    CurationRules curationRules94 = curationRules42;
                    ComparableCurationRules comparableCurationRules26 = comparableCurationRules9;
                    char c8 = c3;
                    CurationRules curationRules95 = curationRules37;
                    CurationRules curationRules96 = curationRules58;
                    CurationRules curationRules97 = curationRules38;
                    ComparableCurationRules comparableCurationRules27 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    comparableCurationRules5 = comparableCurationRules11;
                    curationRules23 = curationRules39;
                    curationRules24 = curationRules57;
                    curationRules25 = curationRules46;
                    curationRules26 = curationRules56;
                    curationRules27 = curationRules45;
                    curationRules28 = curationRules55;
                    ComparableCurationRules comparableCurationRules28 = comparableCurationRules10;
                    CurationRules curationRules98 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 6, (KSerializer) lazyArr[6].getValue(), curationRules53);
                    int i5 = c8 | '@';
                    curationRules21 = curationRules96;
                    curationRules37 = curationRules95;
                    comparableCurationRules4 = comparableCurationRules27;
                    curationRules38 = curationRules97;
                    curationRules53 = curationRules98;
                    comparableCurationRules9 = comparableCurationRules26;
                    c = i5 == true ? 1 : 0;
                    curationRules22 = curationRules48;
                    curationRules44 = curationRules44;
                    comparableCurationRules8 = comparableCurationRules25;
                    curationRules40 = curationRules92;
                    curationRules42 = curationRules94;
                    curationRules54 = curationRules54;
                    comparableCurationRules10 = comparableCurationRules28;
                    curationRules41 = curationRules93;
                    curationRules55 = curationRules28;
                    curationRules45 = curationRules27;
                    curationRules56 = curationRules26;
                    curationRules46 = curationRules25;
                    curationRules57 = curationRules24;
                    curationRules39 = curationRules23;
                    comparableCurationRules11 = comparableCurationRules5;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 7:
                    ComparableCurationRules comparableCurationRules29 = comparableCurationRules8;
                    CurationRules curationRules99 = curationRules40;
                    CurationRules curationRules100 = curationRules41;
                    CurationRules curationRules101 = curationRules42;
                    ComparableCurationRules comparableCurationRules30 = comparableCurationRules9;
                    char c9 = c3;
                    CurationRules curationRules102 = curationRules37;
                    CurationRules curationRules103 = curationRules58;
                    CurationRules curationRules104 = curationRules38;
                    ComparableCurationRules comparableCurationRules31 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    comparableCurationRules5 = comparableCurationRules11;
                    curationRules23 = curationRules39;
                    curationRules24 = curationRules57;
                    curationRules25 = curationRules46;
                    curationRules26 = curationRules56;
                    CurationRules curationRules105 = curationRules45;
                    CurationRules curationRules106 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, (KSerializer) lazyArr[7].getValue(), curationRules54);
                    int i6 = c9 | 128;
                    curationRules21 = curationRules103;
                    curationRules37 = curationRules102;
                    comparableCurationRules4 = comparableCurationRules31;
                    curationRules38 = curationRules104;
                    curationRules54 = curationRules106;
                    comparableCurationRules9 = comparableCurationRules30;
                    c = i6 == true ? 1 : 0;
                    curationRules22 = curationRules48;
                    comparableCurationRules10 = comparableCurationRules10;
                    comparableCurationRules8 = comparableCurationRules29;
                    curationRules40 = curationRules99;
                    curationRules42 = curationRules101;
                    curationRules55 = curationRules55;
                    curationRules45 = curationRules105;
                    curationRules41 = curationRules100;
                    curationRules56 = curationRules26;
                    curationRules46 = curationRules25;
                    curationRules57 = curationRules24;
                    curationRules39 = curationRules23;
                    comparableCurationRules11 = comparableCurationRules5;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 8:
                    ComparableCurationRules comparableCurationRules32 = comparableCurationRules8;
                    CurationRules curationRules107 = curationRules40;
                    CurationRules curationRules108 = curationRules41;
                    CurationRules curationRules109 = curationRules42;
                    ComparableCurationRules comparableCurationRules33 = comparableCurationRules9;
                    char c10 = c3;
                    CurationRules curationRules110 = curationRules37;
                    CurationRules curationRules111 = curationRules58;
                    CurationRules curationRules112 = curationRules38;
                    ComparableCurationRules comparableCurationRules34 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    comparableCurationRules5 = comparableCurationRules11;
                    curationRules23 = curationRules39;
                    curationRules24 = curationRules57;
                    CurationRules curationRules113 = curationRules46;
                    CurationRules curationRules114 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, (KSerializer) lazyArr[8].getValue(), curationRules55);
                    int i7 = c10 | 256;
                    curationRules21 = curationRules111;
                    curationRules37 = curationRules110;
                    comparableCurationRules4 = comparableCurationRules34;
                    curationRules38 = curationRules112;
                    curationRules55 = curationRules114;
                    comparableCurationRules9 = comparableCurationRules33;
                    c = i7 == true ? 1 : 0;
                    curationRules22 = curationRules48;
                    curationRules45 = curationRules45;
                    comparableCurationRules8 = comparableCurationRules32;
                    curationRules40 = curationRules107;
                    curationRules42 = curationRules109;
                    curationRules56 = curationRules56;
                    curationRules46 = curationRules113;
                    curationRules41 = curationRules108;
                    curationRules57 = curationRules24;
                    curationRules39 = curationRules23;
                    comparableCurationRules11 = comparableCurationRules5;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 9:
                    ComparableCurationRules comparableCurationRules35 = comparableCurationRules8;
                    CurationRules curationRules115 = curationRules40;
                    CurationRules curationRules116 = curationRules41;
                    CurationRules curationRules117 = curationRules42;
                    ComparableCurationRules comparableCurationRules36 = comparableCurationRules9;
                    char c11 = c3;
                    CurationRules curationRules118 = curationRules37;
                    CurationRules curationRules119 = curationRules58;
                    CurationRules curationRules120 = curationRules38;
                    ComparableCurationRules comparableCurationRules37 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    comparableCurationRules5 = comparableCurationRules11;
                    CurationRules curationRules121 = curationRules39;
                    CurationRules curationRules122 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 9, (KSerializer) lazyArr[9].getValue(), curationRules56);
                    int i8 = c11 | 512;
                    curationRules21 = curationRules119;
                    curationRules37 = curationRules118;
                    comparableCurationRules4 = comparableCurationRules37;
                    curationRules38 = curationRules120;
                    curationRules56 = curationRules122;
                    comparableCurationRules9 = comparableCurationRules36;
                    c = i8 == true ? 1 : 0;
                    curationRules22 = curationRules48;
                    curationRules46 = curationRules46;
                    comparableCurationRules8 = comparableCurationRules35;
                    curationRules40 = curationRules115;
                    curationRules57 = curationRules57;
                    curationRules42 = curationRules117;
                    curationRules39 = curationRules121;
                    curationRules41 = curationRules116;
                    comparableCurationRules11 = comparableCurationRules5;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 10:
                    CurationRules curationRules123 = curationRules40;
                    ComparableCurationRules comparableCurationRules38 = comparableCurationRules9;
                    char c12 = c3;
                    CurationRules curationRules124 = curationRules37;
                    CurationRules curationRules125 = curationRules58;
                    CurationRules curationRules126 = curationRules38;
                    ComparableCurationRules comparableCurationRules39 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    comparableCurationRules5 = comparableCurationRules11;
                    CurationRules curationRules127 = curationRules39;
                    CurationRules curationRules128 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 10, (KSerializer) lazyArr[10].getValue(), curationRules57);
                    curationRules21 = curationRules125;
                    curationRules37 = curationRules124;
                    comparableCurationRules4 = comparableCurationRules39;
                    curationRules38 = curationRules126;
                    curationRules57 = curationRules128;
                    c = (c12 | 1024) == true ? 1 : 0;
                    comparableCurationRules9 = comparableCurationRules38;
                    curationRules42 = curationRules42;
                    curationRules22 = curationRules48;
                    curationRules39 = curationRules127;
                    comparableCurationRules8 = comparableCurationRules8;
                    curationRules41 = curationRules41;
                    curationRules40 = curationRules123;
                    comparableCurationRules11 = comparableCurationRules5;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 11:
                    CurationRules curationRules129 = curationRules40;
                    ComparableCurationRules comparableCurationRules40 = comparableCurationRules9;
                    char c13 = c3;
                    CurationRules curationRules130 = curationRules37;
                    CurationRules curationRules131 = curationRules58;
                    CurationRules curationRules132 = curationRules38;
                    ComparableCurationRules comparableCurationRules41 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    ComparableCurationRules comparableCurationRules42 = (ComparableCurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 11, (KSerializer) lazyArr[11].getValue(), comparableCurationRules11);
                    curationRules21 = curationRules131;
                    curationRules37 = curationRules130;
                    comparableCurationRules4 = comparableCurationRules41;
                    curationRules38 = curationRules132;
                    comparableCurationRules11 = comparableCurationRules42;
                    c = (c13 | 2048) == true ? 1 : 0;
                    comparableCurationRules9 = comparableCurationRules40;
                    curationRules42 = curationRules42;
                    curationRules22 = curationRules48;
                    comparableCurationRules8 = comparableCurationRules8;
                    curationRules41 = curationRules41;
                    curationRules40 = curationRules129;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 12:
                    ComparableCurationRules comparableCurationRules43 = comparableCurationRules8;
                    CurationRules curationRules133 = curationRules40;
                    ComparableCurationRules comparableCurationRules44 = comparableCurationRules9;
                    char c14 = c3;
                    CurationRules curationRules134 = curationRules37;
                    ComparableCurationRules comparableCurationRules45 = (ComparableCurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 12, (KSerializer) lazyArr[12].getValue(), comparableCurationRules12);
                    curationRules21 = curationRules58;
                    curationRules37 = curationRules134;
                    c = (c14 | 4096) == true ? 1 : 0;
                    collectionCurationRules = collectionCurationRules2;
                    comparableCurationRules9 = comparableCurationRules44;
                    curationRules42 = curationRules42;
                    curationRules22 = curationRules48;
                    curationRules38 = curationRules38;
                    curationRules41 = curationRules41;
                    curationRules40 = curationRules133;
                    i = i2;
                    comparableCurationRules4 = comparableCurationRules45;
                    comparableCurationRules8 = comparableCurationRules43;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case IMAGE_VALUE:
                    CurationRules curationRules135 = curationRules40;
                    ComparableCurationRules comparableCurationRules46 = comparableCurationRules9;
                    char c15 = c3;
                    curationRules21 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 13, (KSerializer) lazyArr[13].getValue(), curationRules58);
                    curationRules37 = curationRules37;
                    c = (c15 | 8192) == true ? 1 : 0;
                    comparableCurationRules9 = comparableCurationRules46;
                    curationRules42 = curationRules42;
                    curationRules22 = curationRules48;
                    comparableCurationRules4 = comparableCurationRules12;
                    comparableCurationRules8 = comparableCurationRules8;
                    curationRules41 = curationRules41;
                    curationRules40 = curationRules135;
                    collectionCurationRules = collectionCurationRules2;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    curationRules35 = curationRules40;
                    curationRules42 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 14, (KSerializer) lazyArr[14].getValue(), curationRules42);
                    comparableCurationRules9 = comparableCurationRules9;
                    c = (c3 | 16384) == true ? 1 : 0;
                    curationRules22 = curationRules48;
                    curationRules21 = curationRules58;
                    curationRules41 = curationRules41;
                    curationRules40 = curationRules35;
                    comparableCurationRules4 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 15:
                    curationRules35 = curationRules40;
                    comparableCurationRules9 = (ComparableCurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 15, (KSerializer) lazyArr[15].getValue(), comparableCurationRules9);
                    c = (c3 | 32768) == true ? 1 : 0;
                    curationRules22 = curationRules48;
                    curationRules21 = curationRules58;
                    curationRules42 = curationRules42;
                    curationRules40 = curationRules35;
                    comparableCurationRules4 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case LAZY_VERTICAL_GRID_VALUE:
                    curationRules36 = curationRules42;
                    comparableCurationRules7 = comparableCurationRules9;
                    curationRules43 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 16, (KSerializer) lazyArr[16].getValue(), curationRules43);
                    c2 = c3 | 0;
                    c = c2;
                    curationRules22 = curationRules48;
                    curationRules21 = curationRules58;
                    curationRules42 = curationRules36;
                    comparableCurationRules9 = comparableCurationRules7;
                    comparableCurationRules4 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case VERTICAL_GRID_ITEM_VALUE:
                    curationRules36 = curationRules42;
                    comparableCurationRules7 = comparableCurationRules9;
                    curationRules44 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 17, (KSerializer) lazyArr[17].getValue(), curationRules44);
                    c2 = c3 | 0;
                    c = c2;
                    curationRules22 = curationRules48;
                    curationRules21 = curationRules58;
                    curationRules42 = curationRules36;
                    comparableCurationRules9 = comparableCurationRules7;
                    comparableCurationRules4 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case RADIO_GROUP_VALUE:
                    curationRules36 = curationRules42;
                    comparableCurationRules7 = comparableCurationRules9;
                    comparableCurationRules10 = (ComparableCurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 18, (KSerializer) lazyArr[18].getValue(), comparableCurationRules10);
                    c2 = c3 | 0;
                    c = c2;
                    curationRules22 = curationRules48;
                    curationRules21 = curationRules58;
                    curationRules42 = curationRules36;
                    comparableCurationRules9 = comparableCurationRules7;
                    comparableCurationRules4 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case RADIO_BUTTON_VALUE:
                    curationRules36 = curationRules42;
                    comparableCurationRules7 = comparableCurationRules9;
                    curationRules45 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 19, (KSerializer) lazyArr[19].getValue(), curationRules45);
                    c2 = c3 | 0;
                    c = c2;
                    curationRules22 = curationRules48;
                    curationRules21 = curationRules58;
                    curationRules42 = curationRules36;
                    comparableCurationRules9 = comparableCurationRules7;
                    comparableCurationRules4 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case RADIO_ROW_VALUE:
                    curationRules36 = curationRules42;
                    comparableCurationRules7 = comparableCurationRules9;
                    curationRules46 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 20, (KSerializer) lazyArr[20].getValue(), curationRules46);
                    c2 = c3 | 0;
                    c = c2;
                    curationRules22 = curationRules48;
                    curationRules21 = curationRules58;
                    curationRules42 = curationRules36;
                    comparableCurationRules9 = comparableCurationRules7;
                    comparableCurationRules4 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case RADIO_COLUMN_VALUE:
                    curationRules36 = curationRules42;
                    comparableCurationRules7 = comparableCurationRules9;
                    curationRules39 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 21, (KSerializer) lazyArr[21].getValue(), curationRules39);
                    c2 = c3 | 0;
                    c = c2;
                    curationRules22 = curationRules48;
                    curationRules21 = curationRules58;
                    curationRules42 = curationRules36;
                    comparableCurationRules9 = comparableCurationRules7;
                    comparableCurationRules4 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case SIZE_BOX_VALUE:
                    curationRules36 = curationRules42;
                    comparableCurationRules7 = comparableCurationRules9;
                    collectionCurationRules2 = (CollectionCurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 22, (KSerializer) lazyArr[22].getValue(), collectionCurationRules2);
                    c2 = c3 | 0;
                    c = c2;
                    curationRules22 = curationRules48;
                    curationRules21 = curationRules58;
                    curationRules42 = curationRules36;
                    comparableCurationRules9 = comparableCurationRules7;
                    comparableCurationRules4 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 23:
                    curationRules36 = curationRules42;
                    comparableCurationRules7 = comparableCurationRules9;
                    curationRules38 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 23, (KSerializer) lazyArr[23].getValue(), curationRules38);
                    c2 = c3 | 0;
                    c = c2;
                    curationRules22 = curationRules48;
                    curationRules21 = curationRules58;
                    curationRules42 = curationRules36;
                    comparableCurationRules9 = comparableCurationRules7;
                    comparableCurationRules4 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 24:
                    curationRules36 = curationRules42;
                    comparableCurationRules7 = comparableCurationRules9;
                    curationRules37 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 24, (KSerializer) lazyArr[24].getValue(), curationRules37);
                    c2 = c3 | 0;
                    c = c2;
                    curationRules22 = curationRules48;
                    curationRules21 = curationRules58;
                    curationRules42 = curationRules36;
                    comparableCurationRules9 = comparableCurationRules7;
                    comparableCurationRules4 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 25:
                    curationRules36 = curationRules42;
                    comparableCurationRules7 = comparableCurationRules9;
                    comparableCurationRules8 = (ComparableCurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 25, (KSerializer) lazyArr[25].getValue(), comparableCurationRules8);
                    c2 = c3 | 0;
                    c = c2;
                    curationRules22 = curationRules48;
                    curationRules21 = curationRules58;
                    curationRules42 = curationRules36;
                    comparableCurationRules9 = comparableCurationRules7;
                    comparableCurationRules4 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 26:
                    curationRules36 = curationRules42;
                    comparableCurationRules7 = comparableCurationRules9;
                    curationRules41 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 26, (KSerializer) lazyArr[26].getValue(), curationRules41);
                    c2 = c3 | 0;
                    c = c2;
                    curationRules22 = curationRules48;
                    curationRules21 = curationRules58;
                    curationRules42 = curationRules36;
                    comparableCurationRules9 = comparableCurationRules7;
                    comparableCurationRules4 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                case 27:
                    curationRules36 = curationRules42;
                    comparableCurationRules7 = comparableCurationRules9;
                    curationRules40 = (CurationRules) beginStructure.decodeNullableSerializableElement(serialDescriptor, 27, (KSerializer) lazyArr[27].getValue(), curationRules40);
                    c2 = c3 | 0;
                    c = c2;
                    curationRules22 = curationRules48;
                    curationRules21 = curationRules58;
                    curationRules42 = curationRules36;
                    comparableCurationRules9 = comparableCurationRules7;
                    comparableCurationRules4 = comparableCurationRules12;
                    collectionCurationRules = collectionCurationRules2;
                    i = i2;
                    i2 = i;
                    curationRules48 = curationRules22;
                    collectionCurationRules2 = collectionCurationRules;
                    comparableCurationRules12 = comparableCurationRules4;
                    curationRules58 = curationRules21;
                    c3 = c;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        ComparableCurationRules comparableCurationRules47 = comparableCurationRules8;
        CurationRules curationRules136 = curationRules40;
        CurationRules curationRules137 = curationRules41;
        CurationRules curationRules138 = curationRules50;
        CurationRules curationRules139 = curationRules51;
        ComparableCurationRules comparableCurationRules48 = comparableCurationRules12;
        CurationRules curationRules140 = curationRules58;
        CurationRules curationRules141 = curationRules38;
        CollectionCurationRules collectionCurationRules3 = collectionCurationRules2;
        CurationRules curationRules142 = curationRules42;
        CurationRules curationRules143 = curationRules47;
        CurationRules curationRules144 = curationRules48;
        ComparableCurationRules comparableCurationRules49 = comparableCurationRules11;
        CurationRules curationRules145 = curationRules39;
        CurationRules curationRules146 = curationRules57;
        CurationRules curationRules147 = curationRules46;
        CurationRules curationRules148 = curationRules56;
        CurationRules curationRules149 = curationRules45;
        CurationRules curationRules150 = curationRules55;
        ComparableCurationRules comparableCurationRules50 = comparableCurationRules10;
        CurationRules curationRules151 = curationRules54;
        CurationRules curationRules152 = curationRules44;
        CurationRules curationRules153 = curationRules53;
        CurationRules curationRules154 = curationRules43;
        CurationRules curationRules155 = curationRules52;
        ComparableCurationRules comparableCurationRules51 = comparableCurationRules9;
        char c16 = c3;
        CurationRules curationRules156 = curationRules37;
        CurationRules curationRules157 = curationRules49;
        beginStructure.endStructure(serialDescriptor);
        CurationFilter curationFilter = new CurationFilter();
        if ((c16 & 1) == 0) {
            r1 = 0;
            curationFilter.agentAppInstallIdRules = null;
        } else {
            r1 = 0;
            curationFilter.agentAppInstallIdRules = curationRules143;
        }
        if ((c16 & 2) == 0) {
            curationFilter.agentClientPlatformRules = r1;
        } else {
            curationFilter.agentClientPlatformRules = curationRules144;
        }
        if ((c16 & 4) == 0) {
            curationFilter.agentClientPlatformFamilyRules = r1;
        } else {
            curationFilter.agentClientPlatformFamilyRules = curationRules157;
        }
        if ((c16 & '\b') == 0) {
            curationFilter.agentAppFlavorRules = r1;
        } else {
            curationFilter.agentAppFlavorRules = curationRules138;
        }
        if ((c16 & 16) == 0) {
            curationFilter.agentAppThemeRules = r1;
        } else {
            curationFilter.agentAppThemeRules = curationRules139;
        }
        if ((c16 & ' ') == 0) {
            curationFilter.agentAppVersionRules = r1;
        } else {
            curationFilter.agentAppVersionRules = curationRules155;
        }
        if ((c16 & '@') == 0) {
            curationFilter.agentAppVersionNameRules = r1;
        } else {
            curationFilter.agentAppVersionNameRules = curationRules153;
        }
        if ((c16 & 128) == 0) {
            curationFilter.agentDeviceFamilyRules = r1;
        } else {
            curationFilter.agentDeviceFamilyRules = curationRules151;
        }
        if ((c16 & 256) == 0) {
            curationFilter.agentDeviceLanguageRules = r1;
        } else {
            curationFilter.agentDeviceLanguageRules = curationRules150;
        }
        if ((c16 & 512) == 0) {
            curationFilter.agentReleaseStatusRules = r1;
        } else {
            curationFilter.agentReleaseStatusRules = curationRules148;
        }
        if ((c16 & 1024) == 0) {
            curationFilter.mediawikiDatabase = r1;
        } else {
            curationFilter.mediawikiDatabase = curationRules146;
        }
        if ((c16 & 2048) == 0) {
            curationFilter.pageIdRules = r1;
        } else {
            curationFilter.pageIdRules = comparableCurationRules49;
        }
        if ((c16 & 4096) == 0) {
            curationFilter.pageNamespaceIdRules = r1;
        } else {
            curationFilter.pageNamespaceIdRules = comparableCurationRules48;
        }
        if ((c16 & 8192) == 0) {
            curationFilter.pageNamespaceNameRules = r1;
        } else {
            curationFilter.pageNamespaceNameRules = curationRules140;
        }
        if ((c16 & 16384) == 0) {
            curationFilter.pageTitleRules = r1;
        } else {
            curationFilter.pageTitleRules = curationRules142;
        }
        if ((c16 & 32768) == 0) {
            curationFilter.pageRevisionIdRules = r1;
        } else {
            curationFilter.pageRevisionIdRules = comparableCurationRules51;
        }
        if ((c16 & 0) == 0) {
            curationFilter.pageWikidataQidRules = r1;
        } else {
            curationFilter.pageWikidataQidRules = curationRules154;
        }
        if ((c16 & 0) == 0) {
            curationFilter.pageContentLanguageRules = r1;
        } else {
            curationFilter.pageContentLanguageRules = curationRules152;
        }
        if ((c16 & 0) == 0) {
            curationFilter.performerIdRules = r1;
        } else {
            curationFilter.performerIdRules = comparableCurationRules50;
        }
        if ((c16 & 0) == 0) {
            curationFilter.performerNameRules = r1;
        } else {
            curationFilter.performerNameRules = curationRules149;
        }
        if ((c16 & 0) == 0) {
            curationFilter.performerSessionIdRules = r1;
        } else {
            curationFilter.performerSessionIdRules = curationRules147;
        }
        if ((c16 & 0) == 0) {
            curationFilter.performerPageviewIdRules = r1;
        } else {
            curationFilter.performerPageviewIdRules = curationRules145;
        }
        if ((c16 & 0) == 0) {
            curationFilter.performerGroupsRules = r1;
        } else {
            curationFilter.performerGroupsRules = collectionCurationRules3;
        }
        if ((c16 & 0) == 0) {
            curationFilter.performerIsLoggedInRules = r1;
        } else {
            curationFilter.performerIsLoggedInRules = curationRules141;
        }
        if ((c16 & 0) == 0) {
            curationFilter.performerIsTempRules = r1;
        } else {
            curationFilter.performerIsTempRules = curationRules156;
        }
        if ((c16 & 0) == 0) {
            curationFilter.performerRegistrationDtRules = r1;
        } else {
            curationFilter.performerRegistrationDtRules = comparableCurationRules47;
        }
        if ((c16 & 0) == 0) {
            curationFilter.performerLanguageGroupsRules = r1;
        } else {
            curationFilter.performerLanguageGroupsRules = curationRules137;
        }
        if ((c16 & 0) == 0) {
            curationFilter.performerLanguagePrimaryRules = r1;
            return curationFilter;
        }
        curationFilter.performerLanguagePrimaryRules = curationRules136;
        return curationFilter;
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        ComparableCurationRules comparableCurationRules;
        CurationRules curationRules;
        CurationFilter curationFilter = (CurationFilter) obj;
        curationFilter.getClass();
        CurationRules curationRules2 = curationFilter.performerLanguagePrimaryRules;
        CurationRules curationRules3 = curationFilter.performerLanguageGroupsRules;
        ComparableCurationRules comparableCurationRules2 = curationFilter.performerRegistrationDtRules;
        CurationRules curationRules4 = curationFilter.performerIsTempRules;
        CurationRules curationRules5 = curationFilter.performerIsLoggedInRules;
        CollectionCurationRules collectionCurationRules = curationFilter.performerGroupsRules;
        CurationRules curationRules6 = curationFilter.performerPageviewIdRules;
        CurationRules curationRules7 = curationFilter.performerSessionIdRules;
        CurationRules curationRules8 = curationFilter.performerNameRules;
        ComparableCurationRules comparableCurationRules3 = curationFilter.performerIdRules;
        CurationRules curationRules9 = curationFilter.pageContentLanguageRules;
        CurationRules curationRules10 = curationFilter.pageWikidataQidRules;
        ComparableCurationRules comparableCurationRules4 = curationFilter.pageRevisionIdRules;
        CurationRules curationRules11 = curationFilter.pageTitleRules;
        CurationRules curationRules12 = curationFilter.pageNamespaceNameRules;
        ComparableCurationRules comparableCurationRules5 = curationFilter.pageNamespaceIdRules;
        ComparableCurationRules comparableCurationRules6 = curationFilter.pageIdRules;
        CurationRules curationRules13 = curationFilter.mediawikiDatabase;
        CurationRules curationRules14 = curationFilter.agentReleaseStatusRules;
        CurationRules curationRules15 = curationFilter.agentDeviceLanguageRules;
        CurationRules curationRules16 = curationFilter.agentDeviceFamilyRules;
        CurationRules curationRules17 = curationFilter.agentAppVersionNameRules;
        CurationRules curationRules18 = curationFilter.agentAppVersionRules;
        CurationRules curationRules19 = curationFilter.agentAppThemeRules;
        CurationRules curationRules20 = curationFilter.agentAppFlavorRules;
        CurationRules curationRules21 = curationFilter.agentClientPlatformFamilyRules;
        CurationRules curationRules22 = curationFilter.agentClientPlatformRules;
        CurationRules curationRules23 = curationFilter.agentAppInstallIdRules;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = CurationFilter.$childSerializers;
        if (!beginStructure.shouldEncodeElementDefault(serialDescriptor) && curationRules23 == null) {
            comparableCurationRules = comparableCurationRules5;
            curationRules = curationRules12;
        } else {
            curationRules = curationRules12;
            comparableCurationRules = comparableCurationRules5;
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), curationRules23);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules22 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, (KSerializer) lazyArr[1].getValue(), curationRules22);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules21 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), curationRules21);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules20 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, (KSerializer) lazyArr[3].getValue(), curationRules20);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules19 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), curationRules19);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules18 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 5, (KSerializer) lazyArr[5].getValue(), curationRules18);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules17 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 6, (KSerializer) lazyArr[6].getValue(), curationRules17);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules16 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 7, (KSerializer) lazyArr[7].getValue(), curationRules16);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules15 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 8, (KSerializer) lazyArr[8].getValue(), curationRules15);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules14 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 9, (KSerializer) lazyArr[9].getValue(), curationRules14);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules13 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 10, (KSerializer) lazyArr[10].getValue(), curationRules13);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || comparableCurationRules6 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 11, (KSerializer) lazyArr[11].getValue(), comparableCurationRules6);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || comparableCurationRules != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 12, (KSerializer) lazyArr[12].getValue(), comparableCurationRules);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 13, (KSerializer) lazyArr[13].getValue(), curationRules);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules11 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 14, (KSerializer) lazyArr[14].getValue(), curationRules11);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || comparableCurationRules4 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 15, (KSerializer) lazyArr[15].getValue(), comparableCurationRules4);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules10 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 16, (KSerializer) lazyArr[16].getValue(), curationRules10);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules9 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 17, (KSerializer) lazyArr[17].getValue(), curationRules9);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || comparableCurationRules3 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 18, (KSerializer) lazyArr[18].getValue(), comparableCurationRules3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules8 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 19, (KSerializer) lazyArr[19].getValue(), curationRules8);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules7 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 20, (KSerializer) lazyArr[20].getValue(), curationRules7);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules6 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 21, (KSerializer) lazyArr[21].getValue(), curationRules6);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || collectionCurationRules != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 22, (KSerializer) lazyArr[22].getValue(), collectionCurationRules);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules5 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 23, (KSerializer) lazyArr[23].getValue(), curationRules5);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules4 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 24, (KSerializer) lazyArr[24].getValue(), curationRules4);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || comparableCurationRules2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 25, (KSerializer) lazyArr[25].getValue(), comparableCurationRules2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules3 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 26, (KSerializer) lazyArr[26].getValue(), curationRules3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || curationRules2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 27, (KSerializer) lazyArr[27].getValue(), curationRules2);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
