package org.jsoup.internal;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Latch;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.eygraber.uri.Uri;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.function.Supplier;
import kotlinx.coroutines.sync.MutexImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.Exchange$RequestBodySink;
import okhttp3.internal.connection.Exchange$ResponseBodySource;
import okhttp3.internal.http.ExchangeCodec;
import okio.Sink;
import okio.Socket;
import okio.Source;
import org.apache.james.mime4j.codec.DecodeMonitor;
import org.apache.james.mime4j.io.BufferedLineReaderInputStream;
import org.apache.james.mime4j.parser.ContentHandler;
import org.apache.james.mime4j.stream.DefaultFieldBuilder;
import org.apache.james.mime4j.stream.EntityStateMachine;
import org.apache.james.mime4j.stream.FallbackBodyDescriptorBuilder;
import org.apache.james.mime4j.stream.MimeConfig;
import org.apache.james.mime4j.stream.MimeEntity;
import org.apache.james.mime4j.stream.MimeTokenStream;
import org.apache.james.mime4j.stream.NameValuePair;
import org.apache.james.mime4j.util.BufferRecycler;
import org.jetbrains.compose.resources.ResourceCaches;
import org.jsoup.SerializationException;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.jsoup.nodes.Entities$$ExternalSyntheticThreadLocal1;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.Tag;
import org.jsoup.safety.Cleaner;
import org.jsoup.safety.Safelist;
import org.jsoup.select.NodeVisitor;
import org.koin.core.Koin;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SoftPool implements Socket, NodeVisitor {
    public final /* synthetic */ int $r8$classId;
    public final Object initializer;
    public Object threadLocalStack;

    public SoftPool(Latch latch) {
        this.$r8$classId = 3;
        ExchangeCodec exchangeCodec = (ExchangeCodec) latch.spareList;
        this.threadLocalStack = new Exchange$RequestBodySink(latch, exchangeCodec.getSocket().getSink(), -1L, true);
        this.initializer = new Exchange$ResponseBodySource(latch, exchangeCodec.getSocket().getSource(), -1L, true);
    }

    public Object borrow() {
        Entities$$ExternalSyntheticThreadLocal1 entities$$ExternalSyntheticThreadLocal1 = (Entities$$ExternalSyntheticThreadLocal1) this.threadLocalStack;
        ArrayDeque arrayDeque = (ArrayDeque) ((SoftReference) entities$$ExternalSyntheticThreadLocal1.get()).get();
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque();
            entities$$ExternalSyntheticThreadLocal1.set(new SoftReference(arrayDeque));
        }
        return !arrayDeque.isEmpty() ? arrayDeque.pop() : ((Supplier) this.initializer).get();
    }

    @Override // okio.Socket
    public Sink getSink() {
        return (Exchange$RequestBodySink) this.threadLocalStack;
    }

    @Override // okio.Socket
    public Source getSource() {
        return (Exchange$ResponseBodySource) this.initializer;
    }

    @Override // org.jsoup.select.NodeVisitor
    public void head(Node node, int i) {
        int indexOfKey;
        int i2 = this.$r8$classId;
        Object obj = this.initializer;
        switch (i2) {
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                try {
                    node.outerHtmlHead((Appendable) this.threadLocalStack, i, (Document.OutputSettings) obj);
                    return;
                } catch (IOException e) {
                    throw new SerializationException(e);
                }
            default:
                Cleaner cleaner = (Cleaner) obj;
                if (!(node instanceof Element)) {
                    if (node instanceof TextNode) {
                        ((Element) this.threadLocalStack).appendChild(new TextNode(((TextNode) node).coreValue()));
                        return;
                    } else {
                        if (node instanceof DataNode) {
                            if (((Safelist) cleaner.safelist).tagNames.contains(Safelist.TagName.valueOf(node.parentNode.normalName()))) {
                                ((Element) this.threadLocalStack).appendChild(new DataNode(((DataNode) node).coreValue()));
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
                Element element = (Element) node;
                Tag tag = element.tag;
                if (((Safelist) cleaner.safelist).tagNames.contains(Safelist.TagName.valueOf(tag.normalName))) {
                    Safelist safelist = (Safelist) cleaner.safelist;
                    Element shallowClone = element.shallowClone();
                    String str = tag.tagName;
                    Attributes attributes = shallowClone.attributes();
                    if (shallowClone.attributes != null) {
                        if (shallowClone.hasAttributes()) {
                            Attributes attributes2 = shallowClone.attributes();
                            attributes2.getClass();
                            Attributes.AnonymousClass1 anonymousClass1 = new Attributes.AnonymousClass1(attributes2);
                            while (anonymousClass1.hasNext()) {
                                anonymousClass1.next();
                                anonymousClass1.remove();
                            }
                        }
                        if (shallowClone.attributes.size == 0) {
                            shallowClone.attributes = null;
                        }
                    }
                    Attributes attributes3 = element.attributes();
                    attributes3.getClass();
                    Attributes.AnonymousClass1 anonymousClass12 = new Attributes.AnonymousClass1(attributes3);
                    while (anonymousClass12.hasNext()) {
                        Attribute attribute = (Attribute) anonymousClass12.next();
                        if (safelist.isSafeAttribute(str, element, attribute)) {
                            attributes.getClass();
                            attributes.put(attribute.key, Attributes.checkNotNull(attribute.val));
                            attribute.parent = attributes;
                        }
                    }
                    Attributes enforcedAttributes = safelist.getEnforcedAttributes(str);
                    if (element.nameIs("a") && enforcedAttributes.get("rel").equals("nofollow")) {
                        String absUrl = element.absUrl("href");
                        String baseUri = element.baseUri();
                        if (!absUrl.isEmpty() && !baseUri.isEmpty() && absUrl.startsWith(baseUri) && (indexOfKey = enforcedAttributes.indexOfKey("rel")) != -1) {
                            enforcedAttributes.remove(indexOfKey);
                        }
                    }
                    attributes.addAll(enforcedAttributes);
                    shallowClone.attributes().addAll(attributes);
                    ((Element) this.threadLocalStack).appendChild(shallowClone);
                    this.threadLocalStack = shallowClone;
                    return;
                }
                return;
        }
    }

    public void parse(InputStream inputStream) {
        String str;
        MimeTokenStream mimeTokenStream = (MimeTokenStream) this.initializer;
        ((MimeConfig) mimeTokenStream.config).getClass();
        ((MimeConfig) mimeTokenStream.config).getClass();
        MimeEntity mimeEntity = new MimeEntity(inputStream, (MimeConfig) mimeTokenStream.config, 1, 2, (DecodeMonitor) mimeTokenStream.monitor, (DefaultFieldBuilder) mimeTokenStream.fieldBuilder, (FallbackBodyDescriptorBuilder) mimeTokenStream.bodyDescBuilder);
        mimeEntity.recursionMode = mimeTokenStream.recursionMode;
        mimeTokenStream.currentStateMachine = mimeEntity;
        ArrayDeque arrayDeque = (ArrayDeque) mimeTokenStream.entities;
        arrayDeque.clear();
        arrayDeque.add((EntityStateMachine) mimeTokenStream.currentStateMachine);
        mimeTokenStream.state = ((EntityStateMachine) mimeTokenStream.currentStateMachine).getState();
        while (true) {
            int i = mimeTokenStream.state;
            switch (ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i)) {
                case 0:
                    ((ContentHandler) this.threadLocalStack).startMessage();
                    break;
                case 1:
                    ((ContentHandler) this.threadLocalStack).endMessage();
                    break;
                case 2:
                    ContentHandler contentHandler = (ContentHandler) this.threadLocalStack;
                    ((EntityStateMachine) mimeTokenStream.currentStateMachine).getContentStream();
                    contentHandler.raw();
                    break;
                case 3:
                    ((ContentHandler) this.threadLocalStack).startHeader();
                    break;
                case 4:
                    ((ContentHandler) this.threadLocalStack).field(((EntityStateMachine) mimeTokenStream.currentStateMachine).getField());
                    break;
                case 5:
                    ((ContentHandler) this.threadLocalStack).endHeader();
                    break;
                case 6:
                    ((ContentHandler) this.threadLocalStack).startMultipart(((EntityStateMachine) mimeTokenStream.currentStateMachine).getBodyDescriptor());
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    ((ContentHandler) this.threadLocalStack).endMultipart();
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    ((ContentHandler) this.threadLocalStack).preamble(((EntityStateMachine) mimeTokenStream.currentStateMachine).getContentStream());
                    break;
                case 9:
                    ((ContentHandler) this.threadLocalStack).epilogue(((EntityStateMachine) mimeTokenStream.currentStateMachine).getContentStream());
                    break;
                case 10:
                    ((ContentHandler) this.threadLocalStack).startBodyPart();
                    break;
                case 11:
                    ((ContentHandler) this.threadLocalStack).endBodyPart();
                    break;
                case BasicTextKt.ShiftMeta /* 12 */:
                    Uri.Builder bodyDescriptor = ((EntityStateMachine) mimeTokenStream.currentStateMachine).getBodyDescriptor();
                    InputStream contentStream = ((EntityStateMachine) mimeTokenStream.currentStateMachine).getContentStream();
                    ((ContentHandler) this.threadLocalStack).body(bodyDescriptor, contentStream);
                    contentStream.close();
                    break;
                case 13:
                    return;
                default:
                    switch (i) {
                        case 1:
                            str = "T_START_MESSAGE";
                            break;
                        case 2:
                            str = "T_END_MESSAGE";
                            break;
                        case 3:
                            str = "T_RAW_ENTITY";
                            break;
                        case 4:
                            str = "T_START_HEADER";
                            break;
                        case 5:
                            str = "T_FIELD";
                            break;
                        case 6:
                            str = "T_END_HEADER";
                            break;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            str = "T_START_MULTIPART";
                            break;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            str = "T_END_MULTIPART";
                            break;
                        case 9:
                            str = "T_PREAMBLE";
                            break;
                        case 10:
                            str = "T_EPILOGUE";
                            break;
                        case 11:
                            str = "T_START_BODYPART";
                            break;
                        case BasicTextKt.ShiftMeta /* 12 */:
                            str = "T_END_BODYPART";
                            break;
                        case 13:
                            str = "T_BODY";
                            break;
                        case 14:
                            str = "T_END_OF_STREAM";
                            break;
                        default:
                            str = "null";
                            break;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Invalid state: ".concat(str));
                    return;
            }
            if (mimeTokenStream.state != 14 && ((EntityStateMachine) mimeTokenStream.currentStateMachine) != null) {
                while (true) {
                    EntityStateMachine entityStateMachine = (EntityStateMachine) mimeTokenStream.currentStateMachine;
                    if (entityStateMachine != null) {
                        EntityStateMachine advance = entityStateMachine.advance();
                        if (advance != null) {
                            arrayDeque.add(advance);
                            mimeTokenStream.currentStateMachine = advance;
                        }
                        int state = ((EntityStateMachine) mimeTokenStream.currentStateMachine).getState();
                        mimeTokenStream.state = state;
                        if (state != 14) {
                            break;
                        }
                        EntityStateMachine entityStateMachine2 = (EntityStateMachine) arrayDeque.removeLast();
                        if (entityStateMachine2 instanceof MimeEntity) {
                            MimeEntity mimeEntity2 = (MimeEntity) entityStateMachine2;
                            BufferedLineReaderInputStream bufferedLineReaderInputStream = mimeEntity2.inbuffer;
                            bufferedLineReaderInputStream.bufpos = 0;
                            bufferedLineReaderInputStream.buflen = 0;
                            bufferedLineReaderInputStream.truncated = true;
                            BufferRecycler bufferRecycler = BufferedLineReaderInputStream.getBufferRecycler();
                            bufferRecycler.releaseByteBuffer(0, bufferedLineReaderInputStream.buffer);
                            int[] iArr = bufferedLineReaderInputStream.shiftTable;
                            if (iArr != null && BufferRecycler.ENABLED) {
                                bufferRecycler._intBuffers.add(iArr);
                            }
                            MimeEntity.getBufferRecycler().releaseByteBuffer(0, mimeEntity2.tmpbuf);
                        }
                        if (arrayDeque.isEmpty()) {
                            mimeTokenStream.currentStateMachine = null;
                        } else {
                            EntityStateMachine entityStateMachine3 = (EntityStateMachine) arrayDeque.getLast();
                            mimeTokenStream.currentStateMachine = entityStateMachine3;
                            entityStateMachine3.setRecursionMode(mimeTokenStream.recursionMode);
                        }
                    } else {
                        mimeTokenStream.state = 14;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No more tokens are available.");
    }

    public void release(Object obj) {
        Entities$$ExternalSyntheticThreadLocal1 entities$$ExternalSyntheticThreadLocal1 = (Entities$$ExternalSyntheticThreadLocal1) this.threadLocalStack;
        ArrayDeque arrayDeque = (ArrayDeque) ((SoftReference) entities$$ExternalSyntheticThreadLocal1.get()).get();
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque();
            entities$$ExternalSyntheticThreadLocal1.set(new SoftReference(arrayDeque));
        }
        if (arrayDeque.size() < 12) {
            arrayDeque.push(obj);
        }
    }

    @Override // org.jsoup.select.NodeVisitor
    public void tail(Node node, int i) {
        int i2 = this.$r8$classId;
        Object obj = this.initializer;
        switch (i2) {
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                if (node.nodeName().equals("#text")) {
                    return;
                }
                try {
                    node.outerHtmlTail((Appendable) this.threadLocalStack, i, (Document.OutputSettings) obj);
                    return;
                } catch (IOException e) {
                    throw new SerializationException(e);
                }
            default:
                if (node instanceof Element) {
                    if (((Safelist) ((Cleaner) obj).safelist).tagNames.contains(Safelist.TagName.valueOf(((Element) node).tag.normalName))) {
                        this.threadLocalStack = (Element) ((Element) this.threadLocalStack).parentNode;
                        return;
                    }
                    return;
                }
                return;
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 5:
                StringBuilder sb = new StringBuilder();
                sb.append((String) this.threadLocalStack);
                sb.append("; ");
                for (NameValuePair nameValuePair : (List) this.initializer) {
                    sb.append("; ");
                    sb.append(nameValuePair);
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public SoftPool() {
        this.$r8$classId = 6;
        this.threadLocalStack = new MutexImpl();
        this.initializer = new LinkedHashMap();
        ResourceCaches.caches.add(this);
    }

    public SoftPool(Supplier supplier) {
        this.$r8$classId = 0;
        this.initializer = supplier;
        int i = 4;
        this.threadLocalStack = new Entities$$ExternalSyntheticThreadLocal1(new Entities$$ExternalSyntheticLambda0(i), i);
    }

    public SoftPool(DnsQueryResult dnsQueryResult, HashSet hashSet, HashSet hashSet2) {
        this.$r8$classId = 10;
        this.threadLocalStack = dnsQueryResult;
        DesugarCollections.unmodifiableSet(hashSet);
        this.initializer = DesugarCollections.unmodifiableSet(hashSet2);
    }

    public SoftPool(Koin koin) {
        this.$r8$classId = 9;
        this.threadLocalStack = koin;
        this.initializer = new ArrayList();
    }

    public SoftPool(String str, ArrayList arrayList) {
        this.$r8$classId = 5;
        this.threadLocalStack = str;
        this.initializer = arrayList == null ? new ArrayList() : arrayList;
    }

    public SoftPool(MimeConfig mimeConfig) {
        this.$r8$classId = 4;
        MimeTokenStream mimeTokenStream = new MimeTokenStream(mimeConfig);
        this.threadLocalStack = null;
        this.initializer = mimeTokenStream;
    }

    public SoftPool(Cleaner cleaner, Element element, Element element2) {
        this.$r8$classId = 8;
        this.initializer = cleaner;
        this.threadLocalStack = element2;
    }

    public /* synthetic */ SoftPool(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.threadLocalStack = obj;
        this.initializer = obj2;
    }
}
