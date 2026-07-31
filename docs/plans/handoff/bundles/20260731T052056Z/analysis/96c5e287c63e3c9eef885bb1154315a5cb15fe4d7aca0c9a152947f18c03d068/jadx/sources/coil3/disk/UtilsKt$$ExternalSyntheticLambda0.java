package coil3.disk;

import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import androidx.compose.ui.unit.DpKt;
import androidx.room.Room;
import coil3.gif.internal.GifDecoderServiceLoaderTarget;
import coil3.network.CacheStrategy;
import coil3.network.UncoordinatedConcurrentRequestStrategy;
import coil3.network.okhttp.internal.CallFactoryNetworkClient;
import coil3.network.okhttp.internal.OkHttpNetworkFetcherServiceLoaderTarget;
import coil3.size.ViewSizeResolver$CC;
import coil3.svg.internal.SvgDecoderServiceLoaderTarget;
import java.io.File;
import java.math.BigInteger;
import java.net.InetAddress;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.interfaces.RSAPrivateKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.ServiceConfigurationError;
import kotlin.ExceptionsKt;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.sequences.SequencesKt;
import kotlin.text.Regex;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonArraySerializer;
import kotlinx.serialization.json.JsonLiteralSerializer;
import kotlinx.serialization.json.JsonNullSerializer;
import kotlinx.serialization.json.JsonObjectSerializer;
import kotlinx.serialization.json.JsonPrimitiveSerializer;
import okhttp3.OkHttpClient;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.tls.HeldCertificate;
import okhttp3.tls.internal.der.AlgorithmIdentifier;
import okhttp3.tls.internal.der.AttributeTypeAndValue;
import okhttp3.tls.internal.der.BasicDerAdapter;
import okhttp3.tls.internal.der.BitString;
import okhttp3.tls.internal.der.Certificate;
import okhttp3.tls.internal.der.CertificateAdapters;
import okhttp3.tls.internal.der.DerReader;
import okhttp3.tls.internal.der.Extension;
import okhttp3.tls.internal.der.SubjectPublicKeyInfo;
import okhttp3.tls.internal.der.TbsCertificate;
import okhttp3.tls.internal.der.Validity;
import okio.Buffer;
import okio.Buffer$inputStream$1;
import okio.ByteString;
import okio.FileSystem;
import okio.JvmSystemFileSystem;
import okio.Path;
import okio.internal.DefaultSocket;
import org.wikimedia.testkitchen.config.curation.CollectionCurationRules;
import org.wikimedia.testkitchen.config.curation.ComparableCurationRules;
import org.wikimedia.testkitchen.config.curation.CurationRules;
import org.wikimedia.testkitchen.context.InstantSerializer;
import org.wikipedia.dataclient.okhttp.OkHttpConnectionFactory;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class UtilsKt$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ServiceConfigurationError serviceConfigurationError;
        String str;
        Pair pair;
        switch (this.$r8$classId) {
            case 0:
                JvmSystemFileSystem jvmSystemFileSystem = FileSystem.SYSTEM;
                Path resolve = FileSystem.SYSTEM_TEMPORARY_DIRECTORY.resolve("coil3_disk_cache");
                long j = 10485760;
                try {
                    File file = resolve.toFile();
                    file.mkdir();
                    StatFs statFs = new StatFs(file.getAbsolutePath());
                    j = RegexKt.coerceIn((long) (0.02d * statFs.getBlockSizeLong() * statFs.getBlockCountLong()), 10485760L, 262144000L);
                } catch (Exception unused) {
                }
                return new RealDiskCache(j, jvmSystemFileSystem, resolve);
            case 1:
                return CacheStrategy.DEFAULT;
            case 2:
                return UncoordinatedConcurrentRequestStrategy.UNCOORDINATED;
            case 3:
                return new CallFactoryNetworkClient(OkHttpConnectionFactory.client);
            case 4:
                return new CallFactoryNetworkClient(new OkHttpClient(new OkHttpClient.Builder()));
            case 5:
                try {
                    return ExceptionsKt.toImmutableList(SequencesKt.toList(SequencesKt.asSequence(Arrays.asList(new OkHttpNetworkFetcherServiceLoaderTarget()).iterator())));
                } finally {
                }
            case 6:
                try {
                    return ExceptionsKt.toImmutableList(SequencesKt.toList(SequencesKt.asSequence(Arrays.asList(new GifDecoderServiceLoaderTarget(), new SvgDecoderServiceLoaderTarget()).iterator())));
                } finally {
                }
            case 7:
                return new Handler(Looper.getMainLooper());
            case 8:
                return DpKt.Channel$default(0, 7, null);
            case 9:
                DefaultScheduler defaultScheduler = Dispatchers.Default;
                return AwaitKt.CoroutineScope(MainDispatcherLoader.dispatcher);
            case 10:
                return new Handler(Looper.getMainLooper());
            case 11:
                return JsonPrimitiveSerializer.descriptor;
            case 12:
                return JsonNullSerializer.descriptor;
            case IMAGE_VALUE:
                return JsonLiteralSerializer.descriptor;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return JsonObjectSerializer.descriptor;
            case 15:
                return JsonArraySerializer.descriptor;
            case LAZY_VERTICAL_GRID_VALUE:
                ArrayList arrayList = new ArrayList();
                arrayList.add("localhost");
                arrayList.add("localhost.localdomain");
                KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("EC");
                keyPairGenerator.initialize(256, new SecureRandom());
                KeyPair generateKeyPair = keyPairGenerator.generateKeyPair();
                generateKeyPair.getClass();
                BasicDerAdapter basicDerAdapter = CertificateAdapters.subjectPublicKeyInfo;
                ByteString byteString = ByteString.EMPTY;
                byte[] encoded = generateKeyPair.getPublic().getEncoded();
                encoded.getClass();
                ByteString of$default = ByteString.Companion.of$default(encoded);
                basicDerAdapter.getClass();
                Buffer buffer = new Buffer();
                buffer.m876write(of$default);
                SubjectPublicKeyInfo subjectPublicKeyInfo = (SubjectPublicKeyInfo) basicDerAdapter.fromDer(new DerReader(buffer));
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(Room.listOf(new AttributeTypeAndValue("2.5.4.3", "localhost")));
                AlgorithmIdentifier algorithmIdentifier = generateKeyPair.getPrivate() instanceof RSAPrivateKey ? new AlgorithmIdentifier("1.2.840.113549.1.1.11", null) : new AlgorithmIdentifier("1.2.840.10045.4.3.2", ByteString.EMPTY);
                BigInteger bigInteger = BigInteger.ONE;
                bigInteger.getClass();
                long currentTimeMillis = System.currentTimeMillis();
                Validity validity = new Validity(currentTimeMillis, 86400000 + currentTimeMillis);
                ArrayList arrayList3 = new ArrayList();
                if (!arrayList.isEmpty()) {
                    ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        String str2 = (String) it.next();
                        Regex regex = _HostnamesCommonKt.VERIFY_AS_IP_ADDRESS;
                        str2.getClass();
                        if (_HostnamesCommonKt.VERIFY_AS_IP_ADDRESS.matches(str2)) {
                            BasicDerAdapter basicDerAdapter2 = CertificateAdapters.generalNameIpAddress;
                            ByteString byteString2 = ByteString.EMPTY;
                            byte[] address = InetAddress.getByName(str2).getAddress();
                            address.getClass();
                            pair = new Pair(basicDerAdapter2, ByteString.Companion.of$default(address));
                        } else {
                            pair = new Pair(CertificateAdapters.generalNameDnsName, str2);
                        }
                        arrayList4.add(pair);
                    }
                    arrayList3.add(new Extension("2.5.29.17", true, arrayList4));
                }
                TbsCertificate tbsCertificate = new TbsCertificate(2L, bigInteger, algorithmIdentifier, arrayList2, validity, arrayList2, subjectPublicKeyInfo, null, null, arrayList3);
                String str3 = algorithmIdentifier.algorithm;
                if (str3.equals("1.2.840.113549.1.1.11")) {
                    str = "SHA256WithRSA";
                } else {
                    if (!str3.equals("1.2.840.10045.4.3.2")) {
                        throw new IllegalStateException("unexpected signature algorithm: ".concat(str3).toString());
                    }
                    str = "SHA256withECDSA";
                }
                Signature signature = Signature.getInstance(str);
                signature.initSign(generateKeyPair.getPrivate());
                BasicDerAdapter basicDerAdapter3 = CertificateAdapters.tbsCertificate;
                basicDerAdapter3.getClass();
                signature.update(ViewSizeResolver$CC.$default$toDer(basicDerAdapter3, tbsCertificate).toByteArray());
                ByteString byteString3 = ByteString.EMPTY;
                byte[] sign = signature.sign();
                sign.getClass();
                Certificate certificate = new Certificate(tbsCertificate, algorithmIdentifier, new BitString(ByteString.Companion.of$default(sign), 0));
                BasicDerAdapter basicDerAdapter4 = CertificateAdapters.certificate;
                basicDerAdapter4.getClass();
                ByteString $default$toDer = ViewSizeResolver$CC.$default$toDer(basicDerAdapter4, certificate);
                try {
                    CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                    Buffer buffer2 = new Buffer();
                    buffer2.m876write($default$toDer);
                    Collection<? extends java.security.cert.Certificate> generateCertificates = certificateFactory.generateCertificates(new Buffer$inputStream$1(buffer2, 0));
                    generateCertificates.getClass();
                    Object single = CollectionsKt.single(generateCertificates);
                    single.getClass();
                    X509Certificate x509Certificate = (X509Certificate) single;
                    HeldCertificate heldCertificate = new HeldCertificate(generateKeyPair, x509Certificate);
                    DefaultSocket defaultSocket = new DefaultSocket(5);
                    defaultSocket.socket = heldCertificate;
                    defaultSocket.closeBits = (X509Certificate[]) Arrays.copyOf(new X509Certificate[0], 0);
                    ((ArrayList) defaultSocket.source).add(x509Certificate);
                    return defaultSocket.build();
                } catch (IllegalArgumentException e) {
                    throw new IllegalArgumentException("failed to decode certificate", e);
                } catch (GeneralSecurityException e2) {
                    throw new IllegalArgumentException("failed to decode certificate", e2);
                } catch (NoSuchElementException e3) {
                    throw new IllegalArgumentException("failed to decode certificate", e3);
                }
            case VERTICAL_GRID_ITEM_VALUE:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case RADIO_GROUP_VALUE:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case RADIO_BUTTON_VALUE:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case RADIO_ROW_VALUE:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case RADIO_COLUMN_VALUE:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case SIZE_BOX_VALUE:
                return CollectionCurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case 23:
                return CurationRules.Companion.serializer(BooleanSerializer.INSTANCE);
            case 24:
                return CurationRules.Companion.serializer(BooleanSerializer.INSTANCE);
            case 25:
                return ComparableCurationRules.Companion.serializer(InstantSerializer.INSTANCE);
            case 26:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case 27:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            case 28:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
            default:
                return CurationRules.Companion.serializer(StringSerializer.INSTANCE);
        }
    }

    public /* synthetic */ UtilsKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }
}
