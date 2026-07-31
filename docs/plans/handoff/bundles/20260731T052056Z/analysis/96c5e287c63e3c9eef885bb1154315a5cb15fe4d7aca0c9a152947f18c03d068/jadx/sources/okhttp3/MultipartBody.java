package okhttp3;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import androidx.compose.runtime.Latch;
import androidx.room.Room;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaArrayType;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClassifierType;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaWildcardType;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeFlexibility;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.text.Regex;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.tls.internal.der.BasicDerAdapter;
import okhttp3.tls.internal.der.DerAdapter;
import okhttp3.tls.internal.der.DerReader;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import okio.Okio__OkioKt;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.databinding.ActivityPageBinding;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.views.AppTextView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MultipartBody extends RequestBody {
    public static final byte[] COLONSPACE;
    public static final byte[] CRLF;
    public static final byte[] DASHDASH;
    public static final MediaType FORM;
    public static final MediaType MIXED;
    public final ByteString boundaryByteString;
    public long contentLength;
    public final MediaType contentType;
    public final List parts;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Part {
        public final RequestBody body;
        public final Headers headers;

        public Part(Headers headers, RequestBody requestBody) {
            this.headers = headers;
            this.body = requestBody;
        }
    }

    static {
        Regex regex = MediaType.TYPE_SUBTYPE;
        MIXED = ReadingListFragment.MultiSelectCallback.get("multipart/mixed");
        ReadingListFragment.MultiSelectCallback.get("multipart/alternative");
        ReadingListFragment.MultiSelectCallback.get("multipart/digest");
        ReadingListFragment.MultiSelectCallback.get("multipart/parallel");
        FORM = ReadingListFragment.MultiSelectCallback.get("multipart/form-data");
        COLONSPACE = new byte[]{58, 32};
        CRLF = new byte[]{13, 10};
        DASHDASH = new byte[]{45, 45};
    }

    public MultipartBody(ByteString byteString, MediaType mediaType, List list) {
        mediaType.getClass();
        this.boundaryByteString = byteString;
        this.parts = list;
        Regex regex = MediaType.TYPE_SUBTYPE;
        this.contentType = ReadingListFragment.MultiSelectCallback.get(mediaType + "; boundary=" + byteString.utf8());
        this.contentLength = -1L;
    }

    @Override // okhttp3.RequestBody
    public final long contentLength() {
        long j = this.contentLength;
        if (j != -1) {
            return j;
        }
        long writeOrCountBytes$1 = writeOrCountBytes$1(null, true);
        this.contentLength = writeOrCountBytes$1;
        return writeOrCountBytes$1;
    }

    @Override // okhttp3.RequestBody
    public final MediaType contentType() {
        return this.contentType;
    }

    @Override // okhttp3.RequestBody
    public final boolean isOneShot() {
        List list = this.parts;
        if (list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((Part) it.next()).body.isOneShot()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long writeOrCountBytes$1(BufferedSink bufferedSink, boolean z) {
        Buffer buffer;
        BufferedSink bufferedSink2;
        if (z) {
            bufferedSink2 = new Buffer();
            buffer = bufferedSink2;
        } else {
            buffer = 0;
            bufferedSink2 = bufferedSink;
        }
        List list = this.parts;
        int size = list.size();
        long j = 0;
        int i = 0;
        while (true) {
            ByteString byteString = this.boundaryByteString;
            byte[] bArr = DASHDASH;
            byte[] bArr2 = CRLF;
            if (i >= size) {
                bufferedSink2.getClass();
                bufferedSink2.write(bArr);
                bufferedSink2.write(byteString);
                bufferedSink2.write(bArr);
                bufferedSink2.write(bArr2);
                if (!z) {
                    return j;
                }
                buffer.getClass();
                long j2 = j + buffer.size;
                buffer.clear();
                return j2;
            }
            Part part = (Part) list.get(i);
            Headers headers = part.headers;
            RequestBody requestBody = part.body;
            bufferedSink2.getClass();
            bufferedSink2.write(bArr);
            bufferedSink2.write(byteString);
            bufferedSink2.write(bArr2);
            int size2 = headers.size();
            for (int i2 = 0; i2 < size2; i2++) {
                bufferedSink2.writeUtf8(Jsoup.commonName(headers, i2)).write(COLONSPACE).writeUtf8(Jsoup.commonValue(headers, i2)).write(bArr2);
            }
            MediaType contentType = requestBody.contentType();
            if (contentType != null) {
                bufferedSink2.writeUtf8("Content-Type: ").writeUtf8(contentType.mediaType).write(bArr2);
            }
            long contentLength = requestBody.contentLength();
            if (contentLength == -1 && z) {
                buffer.getClass();
                buffer.clear();
                return -1L;
            }
            bufferedSink2.write(bArr2);
            if (z) {
                j += contentLength;
            } else {
                requestBody.writeTo(bufferedSink2);
            }
            bufferedSink2.write(bArr2);
            i++;
        }
    }

    @Override // okhttp3.RequestBody
    public final void writeTo(BufferedSink bufferedSink) {
        writeOrCountBytes$1(bufferedSink, false);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder implements Socket, BasicDerAdapter.Codec {
        public Object boundary;
        public Object parts;
        public Object type;

        public Builder(DefaultSocket defaultSocket) {
            this.boundary = defaultSocket;
            this.type = Okio__OkioKt.buffer((DefaultSocket.SocketSource) defaultSocket.source);
            this.parts = Okio__OkioKt.buffer((DefaultSocket.SocketSink) defaultSocket.sink);
        }

        public static Builder inflate(LayoutInflater layoutInflater) {
            View inflate = layoutInflater.inflate(R.layout.dialog_with_checkbox, (ViewGroup) null, false);
            int i = R.id.dialog_checkbox;
            CheckBox checkBox = (CheckBox) Room.findChildViewById(inflate, R.id.dialog_checkbox);
            if (checkBox != null) {
                i = R.id.dialog_message;
                AppTextView appTextView = (AppTextView) Room.findChildViewById(inflate, R.id.dialog_message);
                if (appTextView != null) {
                    return new Builder((LinearLayout) inflate, checkBox, appTextView);
                }
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:155:0x012b, code lost:
        
            if (r12 != kotlin.reflect.jvm.internal.impl.types.Variance.OUT_VARIANCE) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0157, code lost:
        
            if (r9 != null) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x01dc, code lost:
        
            if (r2.isEmpty() == false) goto L99;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:49:0x01ee  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x024e  */
        /* JADX WARN: Type inference failed for: r17v0 */
        /* JADX WARN: Type inference failed for: r17v19 */
        /* JADX WARN: Type inference failed for: r17v2, types: [kotlin.reflect.jvm.internal.impl.types.SimpleType] */
        /* JADX WARN: Type inference failed for: r17v9 */
        /* JADX WARN: Type inference failed for: r7v2, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r7v3, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r7v4, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r7v5, types: [java.util.ArrayList] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public kotlin.reflect.jvm.internal.impl.types.SimpleType computeSimpleJavaClassifierType(kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClassifierType r21, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes r22, kotlin.reflect.jvm.internal.impl.types.SimpleType r23) {
            /*
                Method dump skipped, instructions count: 970
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.MultipartBody.Builder.computeSimpleJavaClassifierType(kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClassifierType, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes, kotlin.reflect.jvm.internal.impl.types.SimpleType):kotlin.reflect.jvm.internal.impl.types.SimpleType");
        }

        @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
        public Object decode(DerReader derReader) {
            derReader.getClass();
            DerAdapter[] derAdapterArr = (DerAdapter[]) this.boundary;
            Function1 function1 = (Function1) this.type;
            ArrayList arrayList = derReader.typeHintStack;
            arrayList.add(null);
            try {
                ArrayList arrayList2 = new ArrayList();
                while (arrayList2.size() < derAdapterArr.length) {
                    arrayList2.add(derAdapterArr[arrayList2.size()].fromDer(derReader));
                }
                if (derReader.peekHeader() == null) {
                    return function1.invoke(arrayList2);
                }
                throw new ProtocolException("unexpected " + derReader.peekHeader() + " at " + derReader);
            } finally {
                arrayList.remove(arrayList.size() - 1);
            }
        }

        @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
        public void encode(Latch latch, Object obj) {
            latch.getClass();
            List list = (List) ((Function1) this.parts).invoke(obj);
            DerAdapter[] derAdapterArr = (DerAdapter[]) this.boundary;
            ArrayList arrayList = (ArrayList) latch.spareList;
            arrayList.add(null);
            try {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    DerAdapter derAdapter = derAdapterArr[i];
                    derAdapter.getClass();
                    derAdapter.toDer(latch, list.get(i));
                }
            } finally {
                arrayList.remove(arrayList.size() - 1);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x008a A[LOOP:0: B:16:0x0084->B:18:0x008a, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0034  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.io.Serializable fetchMoreLike(java.util.ArrayList r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
            /*
                r12 = this;
                java.lang.Object r0 = r12.parts
                org.wikipedia.dataclient.WikiSite r0 = (org.wikipedia.dataclient.WikiSite) r0
                boolean r1 = r14 instanceof org.wikipedia.feed.personalization.homepreference.HomePreferenceRepository$fetchMoreLike$1
                if (r1 == 0) goto L18
                r1 = r14
                org.wikipedia.feed.personalization.homepreference.HomePreferenceRepository$fetchMoreLike$1 r1 = (org.wikipedia.feed.personalization.homepreference.HomePreferenceRepository$fetchMoreLike$1) r1
                int r2 = r1.label
                r3 = -2147483648(0xffffffff80000000, float:-0.0)
                r4 = r2 & r3
                if (r4 == 0) goto L18
                int r2 = r2 - r3
                r1.label = r2
            L16:
                r9 = r1
                goto L1e
            L18:
                org.wikipedia.feed.personalization.homepreference.HomePreferenceRepository$fetchMoreLike$1 r1 = new org.wikipedia.feed.personalization.homepreference.HomePreferenceRepository$fetchMoreLike$1
                r1.<init>(r12, r14)
                goto L16
            L1e:
                java.lang.Object r12 = r9.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r14 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r9.label
                r2 = 1
                r11 = 0
                if (r1 == 0) goto L34
                if (r1 != r2) goto L2e
                kotlin.ResultKt.throwOnFailure(r12)
                goto L6b
            L2e:
                java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r12)
                return r11
            L34:
                kotlin.ResultKt.throwOnFailure(r12)
                boolean r12 = r13.isEmpty()
                if (r12 == 0) goto L3e
                goto La6
            L3e:
                r12 = 3
                java.util.List r3 = kotlin.collections.CollectionsKt.take(r13, r12)
                r7 = 0
                r8 = 62
                java.lang.String r4 = "|"
                r5 = 0
                r6 = 0
                java.lang.String r12 = kotlin.collections.CollectionsKt.joinToString$default(r3, r4, r5, r6, r7, r8)
                java.lang.String r13 = "morelike:"
                java.lang.String r3 = r13.concat(r12)
                org.wikipedia.dataclient.ServiceFactory r12 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
                r12 = r2
                org.wikipedia.dataclient.Service r2 = org.wikipedia.dataclient.ServiceFactory.get(r0)
                r9.label = r12
                r4 = 3
                r5 = 3
                r7 = 0
                r8 = 0
                r10 = 56
                java.lang.Object r12 = org.wikipedia.dataclient.Service.CC.searchMoreLike$default(r2, r3, r4, r5, r6, r7, r8, r9, r10)
                if (r12 != r14) goto L6b
                return r14
            L6b:
                org.wikipedia.dataclient.mwapi.MwQueryResponse r12 = (org.wikipedia.dataclient.mwapi.MwQueryResponse) r12
                org.wikipedia.dataclient.mwapi.MwQueryResult r12 = r12.query
                if (r12 == 0) goto La6
                java.util.List r12 = r12.pages
                if (r12 == 0) goto La6
                java.util.ArrayList r13 = new java.util.ArrayList
                r14 = 10
                int r14 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r12, r14)
                r13.<init>(r14)
                java.util.Iterator r12 = r12.iterator()
            L84:
                boolean r14 = r12.hasNext()
                if (r14 == 0) goto La5
                java.lang.Object r14 = r12.next()
                org.wikipedia.dataclient.mwapi.MwQueryPage r14 = (org.wikipedia.dataclient.mwapi.MwQueryPage) r14
                org.wikipedia.feed.personalization.homepreference.HomePreferenceContent r1 = new org.wikipedia.feed.personalization.homepreference.HomePreferenceContent
                java.lang.String r2 = r0.languageCode
                java.lang.String r2 = r14.displayTitle(r2)
                java.lang.String r3 = r14.description
                java.lang.String r14 = r14.thumbUrl()
                r1.<init>(r2, r3, r14, r11)
                r13.add(r1)
                goto L84
            La5:
                return r13
            La6:
                kotlin.collections.EmptyList r12 = kotlin.collections.EmptyList.INSTANCE
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.MultipartBody.Builder.fetchMoreLike(java.util.ArrayList, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x00ac  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00c5  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00a7  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0039  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.io.Serializable getCommunityPreviewContent(kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
            /*
                Method dump skipped, instructions count: 254
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.MultipartBody.Builder.getCommunityPreviewContent(kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
        }

        /* JADX WARN: Code restructure failed: missing block: B:64:0x00de, code lost:
        
            if (r12 == r1) goto L59;
         */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0112 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0041  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object getPersonalizedPreviewContent(java.util.Set r10, java.util.Map r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
            /*
                Method dump skipped, instructions count: 275
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.MultipartBody.Builder.getPersonalizedPreviewContent(java.util.Set, java.util.Map, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        @Override // okio.Socket
        public Sink getSink() {
            return (RealBufferedSink) this.parts;
        }

        @Override // okio.Socket
        public Source getSource() {
            return (RealBufferedSource) this.type;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0039  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0069  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public kotlin.reflect.jvm.internal.impl.types.UnwrappedType transformArrayType(kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaArrayType r8, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes r9, boolean r10) {
            /*
                r7 = this;
                java.lang.Object r0 = r7.boundary
                okhttp3.Request$Builder r0 = (okhttp3.Request.Builder) r0
                java.lang.Object r1 = r0.url
                org.wikipedia.databinding.ActivityPageBinding r1 = (org.wikipedia.databinding.ActivityPageBinding) r1
                boolean r9 = r9.isForAnnotationParameter
                kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType r2 = r8.componentType
                boolean r3 = r2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPrimitiveType
                r4 = 0
                if (r3 == 0) goto L15
                r3 = r2
                kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPrimitiveType r3 = (kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPrimitiveType) r3
                goto L16
            L15:
                r3 = r4
            L16:
                if (r3 == 0) goto L30
                java.lang.Class r3 = r3.reflectType
                java.lang.Class r5 = java.lang.Void.TYPE
                boolean r5 = r3.equals(r5)
                if (r5 == 0) goto L23
                goto L30
            L23:
                java.lang.String r3 = r3.getName()
                kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType r3 = kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType.get(r3)
                kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType r3 = r3.getPrimitiveType()
                goto L31
            L30:
                r3 = r4
            L31:
                kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations r5 = new kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations
                r6 = 1
                r5.<init>(r0, r8, r6)
                if (r3 == 0) goto L69
                java.lang.Object r7 = r1.pageToolbarButtonNotifications
                kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl r7 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl) r7
                kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns r7 = r7.builtIns
                kotlin.reflect.jvm.internal.impl.types.SimpleType r7 = r7.getPrimitiveArrayKotlinType(r3)
                kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationsImpl r8 = new kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationsImpl
                kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations r10 = r7.getAnnotations()
                r0 = 2
                kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations[] r0 = new kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations[r0]
                r1 = 0
                r0[r1] = r10
                r0[r6] = r5
                r8.<init>(r0)
                kotlin.reflect.jvm.internal.impl.types.KotlinType r7 = androidx.work.OperationKt.replaceAnnotations(r7, r8)
                r7.getClass()
                kotlin.reflect.jvm.internal.impl.types.SimpleType r7 = (kotlin.reflect.jvm.internal.impl.types.SimpleType) r7
                if (r9 == 0) goto L60
                return r7
            L60:
                kotlin.reflect.jvm.internal.impl.types.SimpleType r8 = r7.makeNullableAsSpecified(r6)
                kotlin.reflect.jvm.internal.impl.types.UnwrappedType r7 = kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt.flexibleType(r7, r8)
                return r7
            L69:
                kotlin.reflect.jvm.internal.impl.types.TypeUsage r8 = kotlin.reflect.jvm.internal.impl.types.TypeUsage.COMMON
                r0 = 6
                kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes r8 = androidx.work.OperationKt.toAttributes$default(r8, r9, r4, r0)
                kotlin.reflect.jvm.internal.impl.types.KotlinType r7 = r7.transformJavaType(r2, r8)
                if (r9 == 0) goto L88
                if (r10 == 0) goto L7b
                kotlin.reflect.jvm.internal.impl.types.Variance r8 = kotlin.reflect.jvm.internal.impl.types.Variance.OUT_VARIANCE
                goto L7d
            L7b:
                kotlin.reflect.jvm.internal.impl.types.Variance r8 = kotlin.reflect.jvm.internal.impl.types.Variance.INVARIANT
            L7d:
                java.lang.Object r9 = r1.pageToolbarButtonNotifications
                kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl r9 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl) r9
                kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns r9 = r9.builtIns
                kotlin.reflect.jvm.internal.impl.types.SimpleType r7 = r9.getArrayType(r8, r7, r5)
                return r7
            L88:
                java.lang.Object r8 = r1.pageToolbarButtonNotifications
                kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl r8 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl) r8
                kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns r8 = r8.builtIns
                kotlin.reflect.jvm.internal.impl.types.Variance r9 = kotlin.reflect.jvm.internal.impl.types.Variance.INVARIANT
                kotlin.reflect.jvm.internal.impl.types.SimpleType r8 = r8.getArrayType(r9, r7, r5)
                java.lang.Object r9 = r1.pageToolbarButtonNotifications
                kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl r9 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl) r9
                kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns r9 = r9.builtIns
                kotlin.reflect.jvm.internal.impl.types.Variance r10 = kotlin.reflect.jvm.internal.impl.types.Variance.OUT_VARIANCE
                kotlin.reflect.jvm.internal.impl.types.SimpleType r7 = r9.getArrayType(r10, r7, r5)
                kotlin.reflect.jvm.internal.impl.types.SimpleType r7 = r7.makeNullableAsSpecified(r6)
                kotlin.reflect.jvm.internal.impl.types.UnwrappedType r7 = kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt.flexibleType(r8, r7)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.MultipartBody.Builder.transformArrayType(kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaArrayType, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes, boolean):kotlin.reflect.jvm.internal.impl.types.UnwrappedType");
        }

        public KotlinType transformJavaType(ReflectJavaType reflectJavaType, JavaTypeAttributes javaTypeAttributes) {
            ActivityPageBinding activityPageBinding = (ActivityPageBinding) ((Request.Builder) this.boundary).url;
            if (reflectJavaType instanceof ReflectJavaPrimitiveType) {
                Class cls = ((ReflectJavaPrimitiveType) reflectJavaType).reflectType;
                PrimitiveType primitiveType = cls.equals(Void.TYPE) ? null : JvmPrimitiveType.get(cls.getName()).getPrimitiveType();
                return primitiveType != null ? ((ModuleDescriptorImpl) activityPageBinding.pageToolbarButtonNotifications).builtIns.getPrimitiveKotlinType(primitiveType) : ((ModuleDescriptorImpl) activityPageBinding.pageToolbarButtonNotifications).builtIns.getUnitType();
            }
            boolean z = false;
            if (!(reflectJavaType instanceof ReflectJavaClassifierType)) {
                if (reflectJavaType instanceof ReflectJavaArrayType) {
                    return transformArrayType((ReflectJavaArrayType) reflectJavaType, javaTypeAttributes, false);
                }
                if (reflectJavaType instanceof ReflectJavaWildcardType) {
                    ReflectJavaType bound$1 = ((ReflectJavaWildcardType) reflectJavaType).getBound$1();
                    return bound$1 != null ? transformJavaType(bound$1, javaTypeAttributes) : ((ModuleDescriptorImpl) activityPageBinding.pageToolbarButtonNotifications).builtIns.getDefaultBound();
                }
                if (reflectJavaType == null) {
                    return ((ModuleDescriptorImpl) activityPageBinding.pageToolbarButtonNotifications).builtIns.getDefaultBound();
                }
                Gson$$ExternalSyntheticBUOutline0.m$5("Unsupported type: ", reflectJavaType);
                return null;
            }
            ReflectJavaClassifierType reflectJavaClassifierType = (ReflectJavaClassifierType) reflectJavaType;
            Type type = reflectJavaClassifierType.reflectType;
            if (!javaTypeAttributes.isForAnnotationParameter && javaTypeAttributes.howThisTypeIsUsed != TypeUsage.SUPERTYPE) {
                z = true;
            }
            boolean isRaw = reflectJavaClassifierType.isRaw();
            if (!isRaw && !z) {
                SimpleType computeSimpleJavaClassifierType = computeSimpleJavaClassifierType(reflectJavaClassifierType, javaTypeAttributes, null);
                return computeSimpleJavaClassifierType != null ? computeSimpleJavaClassifierType : ErrorUtils.createErrorType(ErrorTypeKind.UNRESOLVED_JAVA_CLASS, type.toString());
            }
            SimpleType computeSimpleJavaClassifierType2 = computeSimpleJavaClassifierType(reflectJavaClassifierType, javaTypeAttributes.withFlexibility(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND), null);
            if (computeSimpleJavaClassifierType2 == null) {
                return ErrorUtils.createErrorType(ErrorTypeKind.UNRESOLVED_JAVA_CLASS, type.toString());
            }
            SimpleType computeSimpleJavaClassifierType3 = computeSimpleJavaClassifierType(reflectJavaClassifierType, javaTypeAttributes.withFlexibility(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND), computeSimpleJavaClassifierType2);
            if (computeSimpleJavaClassifierType3 == null) {
                return ErrorUtils.createErrorType(ErrorTypeKind.UNRESOLVED_JAVA_CLASS, type.toString());
            }
            if (!isRaw) {
                return KotlinTypeKt.flexibleType(computeSimpleJavaClassifierType2, computeSimpleJavaClassifierType3);
            }
            RawTypeImpl rawTypeImpl = new RawTypeImpl(computeSimpleJavaClassifierType2, computeSimpleJavaClassifierType3);
            KotlinTypeChecker.DEFAULT.isSubtypeOf(computeSimpleJavaClassifierType2, computeSimpleJavaClassifierType3);
            return rawTypeImpl;
        }

        public /* synthetic */ Builder(Object obj, Object obj2, Object obj3) {
            this.boundary = obj;
            this.type = obj2;
            this.parts = obj3;
        }

        public /* synthetic */ Builder(ViewGroup viewGroup, View view, View view2, View view3) {
            this.boundary = view;
            this.type = view2;
            this.parts = view3;
        }

        public Builder(IntRange intRange, Method[] methodArr, Method method) {
            intRange.getClass();
            this.boundary = intRange;
            this.type = methodArr;
            this.parts = method;
        }

        public Builder(ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters, List list, Builder builder) {
            classifierDescriptorWithTypeParameters.getClass();
            list.getClass();
            this.boundary = classifierDescriptorWithTypeParameters;
            this.type = list;
            this.parts = builder;
        }
    }
}
