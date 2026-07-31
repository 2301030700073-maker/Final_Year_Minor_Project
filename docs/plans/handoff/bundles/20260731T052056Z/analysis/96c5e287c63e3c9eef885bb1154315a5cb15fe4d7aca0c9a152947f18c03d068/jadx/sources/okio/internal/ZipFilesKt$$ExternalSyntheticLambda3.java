package okio.internal;

import androidx.room.Room;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.internal.StringOpsKt;
import okhttp3.internal.LinkedTags;
import okhttp3.tls.internal.der.Adapters;
import okhttp3.tls.internal.der.AlgorithmIdentifier;
import okhttp3.tls.internal.der.AttributeTypeAndValue;
import okhttp3.tls.internal.der.BasicConstraints;
import okhttp3.tls.internal.der.BasicDerAdapter;
import okhttp3.tls.internal.der.BitString;
import okhttp3.tls.internal.der.Certificate;
import okhttp3.tls.internal.der.CertificateAdapters;
import okhttp3.tls.internal.der.Extension;
import okhttp3.tls.internal.der.PrivateKeyInfo;
import okhttp3.tls.internal.der.SubjectPublicKeyInfo;
import okhttp3.tls.internal.der.TbsCertificate;
import okhttp3.tls.internal.der.Validity;
import okio.ByteString;
import okio.Okio__OkioKt;
import okio.Path;
import org.wikipedia.WikipediaApp;
import org.wikipedia.categories.db.Category;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ZipFilesKt$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((ZipEntry) obj).getClass();
                return Boolean.TRUE;
            case 1:
                KClass kClass = (KClass) obj;
                kClass.getClass();
                KSerializer serializerOrNull = TuplesKt.serializerOrNull(kClass);
                if (serializerOrNull != null) {
                    return serializerOrNull;
                }
                if (UnsignedKt.getJavaClass(kClass).isInterface()) {
                    return new PolymorphicSerializer(kClass);
                }
                return null;
            case 2:
                KClass kClass2 = (KClass) obj;
                kClass2.getClass();
                KSerializer serializerOrNull2 = TuplesKt.serializerOrNull(kClass2);
                if (serializerOrNull2 == null) {
                    serializerOrNull2 = UnsignedKt.getJavaClass(kClass2).isInterface() ? new PolymorphicSerializer(kClass2) : null;
                }
                if (serializerOrNull2 != null) {
                    return UnsignedKt.getNullable(serializerOrNull2);
                }
                return null;
            case 3:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder.getClass();
                final UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda0 = new UtilsKt$$ExternalSyntheticLambda0(11);
                classSerialDescriptorBuilder.element("JsonPrimitive", new SerialDescriptor(utilsKt$$ExternalSyntheticLambda0) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
                    public final SynchronizedLazyImpl original$delegate;

                    {
                        this.original$delegate = new SynchronizedLazyImpl(utilsKt$$ExternalSyntheticLambda0);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List getAnnotations() {
                        return EmptyList.INSTANCE;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List getElementAnnotations(int i2) {
                        return getOriginal().getElementAnnotations(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor getElementDescriptor(int i2) {
                        return getOriginal().getElementDescriptor(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementIndex(String str) {
                        str.getClass();
                        return getOriginal().getElementIndex(str);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getElementName(int i2) {
                        return getOriginal().getElementName(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementsCount() {
                        return getOriginal().getElementsCount();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final Room getKind() {
                        return getOriginal().getKind();
                    }

                    public final SerialDescriptor getOriginal() {
                        return (SerialDescriptor) this.original$delegate.getValue();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getSerialName() {
                        return getOriginal().getSerialName();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isElementOptional(int i2) {
                        return getOriginal().isElementOptional(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isInline() {
                        return false;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isNullable() {
                        return false;
                    }
                });
                final UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda02 = new UtilsKt$$ExternalSyntheticLambda0(12);
                classSerialDescriptorBuilder.element("JsonNull", new SerialDescriptor(utilsKt$$ExternalSyntheticLambda02) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
                    public final SynchronizedLazyImpl original$delegate;

                    {
                        this.original$delegate = new SynchronizedLazyImpl(utilsKt$$ExternalSyntheticLambda02);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List getAnnotations() {
                        return EmptyList.INSTANCE;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List getElementAnnotations(int i2) {
                        return getOriginal().getElementAnnotations(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor getElementDescriptor(int i2) {
                        return getOriginal().getElementDescriptor(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementIndex(String str) {
                        str.getClass();
                        return getOriginal().getElementIndex(str);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getElementName(int i2) {
                        return getOriginal().getElementName(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementsCount() {
                        return getOriginal().getElementsCount();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final Room getKind() {
                        return getOriginal().getKind();
                    }

                    public final SerialDescriptor getOriginal() {
                        return (SerialDescriptor) this.original$delegate.getValue();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getSerialName() {
                        return getOriginal().getSerialName();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isElementOptional(int i2) {
                        return getOriginal().isElementOptional(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isInline() {
                        return false;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isNullable() {
                        return false;
                    }
                });
                final UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda03 = new UtilsKt$$ExternalSyntheticLambda0(13);
                classSerialDescriptorBuilder.element("JsonLiteral", new SerialDescriptor(utilsKt$$ExternalSyntheticLambda03) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
                    public final SynchronizedLazyImpl original$delegate;

                    {
                        this.original$delegate = new SynchronizedLazyImpl(utilsKt$$ExternalSyntheticLambda03);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List getAnnotations() {
                        return EmptyList.INSTANCE;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List getElementAnnotations(int i2) {
                        return getOriginal().getElementAnnotations(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor getElementDescriptor(int i2) {
                        return getOriginal().getElementDescriptor(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementIndex(String str) {
                        str.getClass();
                        return getOriginal().getElementIndex(str);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getElementName(int i2) {
                        return getOriginal().getElementName(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementsCount() {
                        return getOriginal().getElementsCount();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final Room getKind() {
                        return getOriginal().getKind();
                    }

                    public final SerialDescriptor getOriginal() {
                        return (SerialDescriptor) this.original$delegate.getValue();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getSerialName() {
                        return getOriginal().getSerialName();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isElementOptional(int i2) {
                        return getOriginal().isElementOptional(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isInline() {
                        return false;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isNullable() {
                        return false;
                    }
                });
                final UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda04 = new UtilsKt$$ExternalSyntheticLambda0(14);
                classSerialDescriptorBuilder.element("JsonObject", new SerialDescriptor(utilsKt$$ExternalSyntheticLambda04) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
                    public final SynchronizedLazyImpl original$delegate;

                    {
                        this.original$delegate = new SynchronizedLazyImpl(utilsKt$$ExternalSyntheticLambda04);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List getAnnotations() {
                        return EmptyList.INSTANCE;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List getElementAnnotations(int i2) {
                        return getOriginal().getElementAnnotations(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor getElementDescriptor(int i2) {
                        return getOriginal().getElementDescriptor(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementIndex(String str) {
                        str.getClass();
                        return getOriginal().getElementIndex(str);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getElementName(int i2) {
                        return getOriginal().getElementName(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementsCount() {
                        return getOriginal().getElementsCount();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final Room getKind() {
                        return getOriginal().getKind();
                    }

                    public final SerialDescriptor getOriginal() {
                        return (SerialDescriptor) this.original$delegate.getValue();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getSerialName() {
                        return getOriginal().getSerialName();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isElementOptional(int i2) {
                        return getOriginal().isElementOptional(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isInline() {
                        return false;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isNullable() {
                        return false;
                    }
                });
                final UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda05 = new UtilsKt$$ExternalSyntheticLambda0(15);
                classSerialDescriptorBuilder.element("JsonArray", new SerialDescriptor(utilsKt$$ExternalSyntheticLambda05) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1
                    public final SynchronizedLazyImpl original$delegate;

                    {
                        this.original$delegate = new SynchronizedLazyImpl(utilsKt$$ExternalSyntheticLambda05);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List getAnnotations() {
                        return EmptyList.INSTANCE;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List getElementAnnotations(int i2) {
                        return getOriginal().getElementAnnotations(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor getElementDescriptor(int i2) {
                        return getOriginal().getElementDescriptor(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementIndex(String str) {
                        str.getClass();
                        return getOriginal().getElementIndex(str);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getElementName(int i2) {
                        return getOriginal().getElementName(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int getElementsCount() {
                        return getOriginal().getElementsCount();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final Room getKind() {
                        return getOriginal().getKind();
                    }

                    public final SerialDescriptor getOriginal() {
                        return (SerialDescriptor) this.original$delegate.getValue();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String getSerialName() {
                        return getOriginal().getSerialName();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isElementOptional(int i2) {
                        return getOriginal().isElementOptional(i2);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isInline() {
                        return false;
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean isNullable() {
                        return false;
                    }
                });
                return unit;
            case 4:
                Map.Entry entry = (Map.Entry) obj;
                entry.getClass();
                String str = (String) entry.getKey();
                JsonElement jsonElement = (JsonElement) entry.getValue();
                StringBuilder sb = new StringBuilder();
                StringOpsKt.printQuoted(sb, str);
                sb.append(':');
                sb.append(jsonElement);
                return sb.toString();
            case 5:
                LinkedTags linkedTags = (LinkedTags) obj;
                linkedTags.getClass();
                Okio__OkioKt okio__OkioKt = linkedTags.next;
                if (okio__OkioKt instanceof LinkedTags) {
                    return (LinkedTags) okio__OkioKt;
                }
                return null;
            case 6:
                LinkedTags linkedTags2 = (LinkedTags) obj;
                linkedTags2.getClass();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(linkedTags2.key);
                sb2.append('=');
                sb2.append(linkedTags2.value);
                return sb2.toString();
            case 7:
                Validity validity = (Validity) obj;
                validity.getClass();
                return Room.listOf((Object[]) new Long[]{Long.valueOf(validity.notBefore), Long.valueOf(validity.notAfter)});
            case 8:
                List list = (List) obj;
                list.getClass();
                Object obj2 = list.get(0);
                obj2.getClass();
                long longValue = ((Long) obj2).longValue();
                Object obj3 = list.get(1);
                obj3.getClass();
                Object obj4 = list.get(2);
                obj4.getClass();
                return new PrivateKeyInfo(longValue, (AlgorithmIdentifier) obj3, (ByteString) obj4);
            case 9:
                List list2 = (List) obj;
                list2.getClass();
                Object obj5 = list2.get(0);
                obj5.getClass();
                long longValue2 = ((Long) obj5).longValue();
                Object obj6 = list2.get(1);
                obj6.getClass();
                return new Validity(longValue2, ((Long) obj6).longValue());
            case 10:
                if (Intrinsics.areEqual(obj, "1.2.840.113549.1.1.11")) {
                    return Adapters.NULL;
                }
                if (Intrinsics.areEqual(obj, "1.2.840.113549.1.1.1")) {
                    return Adapters.NULL;
                }
                if (Intrinsics.areEqual(obj, "1.2.840.10045.2.1")) {
                    return Adapters.OBJECT_IDENTIFIER;
                }
                return null;
            case 11:
                AlgorithmIdentifier algorithmIdentifier = (AlgorithmIdentifier) obj;
                algorithmIdentifier.getClass();
                return Room.listOf(algorithmIdentifier.algorithm, algorithmIdentifier.parameters);
            case 12:
                List list3 = (List) obj;
                list3.getClass();
                Object obj7 = list3.get(0);
                obj7.getClass();
                return new AlgorithmIdentifier((String) obj7, list3.get(1));
            case IMAGE_VALUE:
                BasicConstraints basicConstraints = (BasicConstraints) obj;
                basicConstraints.getClass();
                return Room.listOf(Boolean.valueOf(basicConstraints.ca), basicConstraints.maxIntermediateCas);
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                List list4 = (List) obj;
                list4.getClass();
                Object obj8 = list4.get(0);
                obj8.getClass();
                return new BasicConstraints(((Boolean) obj8).booleanValue(), (Long) list4.get(1));
            case 15:
                if (Intrinsics.areEqual(obj, "2.5.29.17")) {
                    return CertificateAdapters.subjectAlternativeName;
                }
                if (Intrinsics.areEqual(obj, "2.5.29.19")) {
                    return CertificateAdapters.basicConstraints;
                }
                return null;
            case LAZY_VERTICAL_GRID_VALUE:
                Extension extension = (Extension) obj;
                extension.getClass();
                return Room.listOf(extension.id, Boolean.valueOf(extension.critical), extension.value);
            case VERTICAL_GRID_ITEM_VALUE:
                List list5 = (List) obj;
                list5.getClass();
                Object obj9 = list5.get(0);
                obj9.getClass();
                Object obj10 = list5.get(1);
                obj10.getClass();
                return new Extension((String) obj9, ((Boolean) obj10).booleanValue(), list5.get(2));
            case RADIO_GROUP_VALUE:
                AttributeTypeAndValue attributeTypeAndValue = (AttributeTypeAndValue) obj;
                attributeTypeAndValue.getClass();
                return Room.listOf(attributeTypeAndValue.type, attributeTypeAndValue.value);
            case RADIO_BUTTON_VALUE:
                List list6 = (List) obj;
                list6.getClass();
                Object obj11 = list6.get(0);
                obj11.getClass();
                return new AttributeTypeAndValue((String) obj11, list6.get(1));
            case RADIO_ROW_VALUE:
                SubjectPublicKeyInfo subjectPublicKeyInfo = (SubjectPublicKeyInfo) obj;
                subjectPublicKeyInfo.getClass();
                return Room.listOf(subjectPublicKeyInfo.algorithm, subjectPublicKeyInfo.subjectPublicKey);
            case RADIO_COLUMN_VALUE:
                List list7 = (List) obj;
                list7.getClass();
                Object obj12 = list7.get(0);
                obj12.getClass();
                Object obj13 = list7.get(1);
                obj13.getClass();
                return new SubjectPublicKeyInfo((AlgorithmIdentifier) obj12, (BitString) obj13);
            case SIZE_BOX_VALUE:
                TbsCertificate tbsCertificate = (TbsCertificate) obj;
                tbsCertificate.getClass();
                Long valueOf = Long.valueOf(tbsCertificate.version);
                BigInteger bigInteger = tbsCertificate.serialNumber;
                AlgorithmIdentifier algorithmIdentifier2 = tbsCertificate.signature;
                BasicDerAdapter basicDerAdapter = CertificateAdapters.rdnSequence;
                return Room.listOf(valueOf, bigInteger, algorithmIdentifier2, new Pair(basicDerAdapter, tbsCertificate.issuer), tbsCertificate.validity, new Pair(basicDerAdapter, tbsCertificate.subject), tbsCertificate.subjectPublicKeyInfo, tbsCertificate.issuerUniqueID, tbsCertificate.subjectUniqueID, tbsCertificate.extensions);
            case 23:
                List list8 = (List) obj;
                list8.getClass();
                Object obj14 = list8.get(0);
                obj14.getClass();
                long longValue3 = ((Long) obj14).longValue();
                Object obj15 = list8.get(1);
                obj15.getClass();
                BigInteger bigInteger2 = (BigInteger) obj15;
                Object obj16 = list8.get(2);
                obj16.getClass();
                AlgorithmIdentifier algorithmIdentifier3 = (AlgorithmIdentifier) obj16;
                Object obj17 = list8.get(3);
                obj17.getClass();
                Object obj18 = ((Pair) obj17).second;
                obj18.getClass();
                List list9 = (List) obj18;
                Object obj19 = list8.get(4);
                obj19.getClass();
                Validity validity2 = (Validity) obj19;
                Object obj20 = list8.get(5);
                obj20.getClass();
                Object obj21 = ((Pair) obj20).second;
                obj21.getClass();
                List list10 = (List) obj21;
                Object obj22 = list8.get(6);
                obj22.getClass();
                SubjectPublicKeyInfo subjectPublicKeyInfo2 = (SubjectPublicKeyInfo) obj22;
                BitString bitString = (BitString) list8.get(7);
                BitString bitString2 = (BitString) list8.get(8);
                Object obj23 = list8.get(9);
                obj23.getClass();
                return new TbsCertificate(longValue3, bigInteger2, algorithmIdentifier3, list9, validity2, list10, subjectPublicKeyInfo2, bitString, bitString2, (List) obj23);
            case 24:
                Certificate certificate = (Certificate) obj;
                certificate.getClass();
                return Room.listOf(certificate.tbsCertificate, certificate.signatureAlgorithm, certificate.signatureValue);
            case 25:
                List list11 = (List) obj;
                list11.getClass();
                Object obj24 = list11.get(0);
                obj24.getClass();
                Object obj25 = list11.get(1);
                obj25.getClass();
                Object obj26 = list11.get(2);
                obj26.getClass();
                return new Certificate((TbsCertificate) obj24, (AlgorithmIdentifier) obj25, (BitString) obj26);
            case 26:
                PrivateKeyInfo privateKeyInfo = (PrivateKeyInfo) obj;
                privateKeyInfo.getClass();
                return Room.listOf(Long.valueOf(privateKeyInfo.version), privateKeyInfo.algorithmIdentifier, privateKeyInfo.privateKey);
            case 27:
                ZipEntry zipEntry = (ZipEntry) obj;
                zipEntry.getClass();
                Path path = ResourceFileSystem.ROOT;
                return Boolean.valueOf(ZipFilesKt.keepPath(zipEntry.canonicalPath));
            case 28:
                WikipediaApp.resetAfterLogOut();
                return unit;
            default:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM Category");
                try {
                    int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "year");
                    int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare, "month");
                    int columnIndexOrThrow3 = UnsignedKt.getColumnIndexOrThrow(prepare, "title");
                    int columnIndexOrThrow4 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow5 = UnsignedKt.getColumnIndexOrThrow(prepare, "count");
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        arrayList.add(new Category((int) prepare.getLong(columnIndexOrThrow), (int) prepare.getLong(columnIndexOrThrow2), (int) prepare.getLong(columnIndexOrThrow5), prepare.getText(columnIndexOrThrow3), prepare.getText(columnIndexOrThrow4)));
                    }
                    return arrayList;
                } finally {
                    prepare.close();
                }
        }
    }

    public /* synthetic */ ZipFilesKt$$ExternalSyntheticLambda3(int i) {
        this.$r8$classId = i;
    }
}
