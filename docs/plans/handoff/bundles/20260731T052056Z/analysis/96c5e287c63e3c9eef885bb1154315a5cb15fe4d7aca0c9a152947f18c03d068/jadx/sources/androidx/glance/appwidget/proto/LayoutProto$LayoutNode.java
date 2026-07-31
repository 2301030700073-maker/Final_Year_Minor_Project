package androidx.glance.appwidget.proto;

import androidx.glance.appwidget.protobuf.GeneratedMessageLite;
import androidx.glance.appwidget.protobuf.Internal;
import androidx.glance.appwidget.protobuf.Parser;
import androidx.glance.appwidget.protobuf.ProtobufArrayList;
import androidx.glance.appwidget.protobuf.RawMessageInfo;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LayoutProto$LayoutNode extends GeneratedMessageLite {
    public static final int CHILDREN_FIELD_NUMBER = 7;
    private static final LayoutProto$LayoutNode DEFAULT_INSTANCE;
    public static final int HASACTION_FIELD_NUMBER = 9;
    public static final int HAS_IMAGE_COLOR_FILTER_FIELD_NUMBER = 11;
    public static final int HAS_IMAGE_DESCRIPTION_FIELD_NUMBER = 10;
    public static final int HEIGHT_FIELD_NUMBER = 3;
    public static final int HORIZONTAL_ALIGNMENT_FIELD_NUMBER = 4;
    public static final int IDENTITY_FIELD_NUMBER = 8;
    public static final int IMAGE_SCALE_FIELD_NUMBER = 6;
    private static volatile Parser PARSER = null;
    public static final int TYPE_FIELD_NUMBER = 1;
    public static final int VERTICAL_ALIGNMENT_FIELD_NUMBER = 5;
    public static final int WIDTH_FIELD_NUMBER = 2;
    private Internal.ProtobufList children_ = ProtobufArrayList.EMPTY_LIST;
    private boolean hasAction_;
    private boolean hasImageColorFilter_;
    private boolean hasImageDescription_;
    private int height_;
    private int horizontalAlignment_;
    private int identity_;
    private int imageScale_;
    private int type_;
    private int verticalAlignment_;
    private int width_;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.Builder {
    }

    static {
        LayoutProto$LayoutNode layoutProto$LayoutNode = new LayoutProto$LayoutNode();
        DEFAULT_INSTANCE = layoutProto$LayoutNode;
        GeneratedMessageLite.registerDefaultInstance(LayoutProto$LayoutNode.class, layoutProto$LayoutNode);
    }

    public static LayoutProto$LayoutNode getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return (Builder) ((GeneratedMessageLite.Builder) DEFAULT_INSTANCE.dynamicMethod(GeneratedMessageLite.MethodToInvoke.NEW_BUILDER));
    }

    public final void addAllChildren(ArrayList arrayList) {
        Internal.ProtobufList protobufList = this.children_;
        boolean z = ((ProtobufArrayList) protobufList).isMutable;
        Internal.ProtobufList protobufList2 = protobufList;
        if (!z) {
            ProtobufArrayList protobufArrayList = (ProtobufArrayList) protobufList;
            int i = protobufArrayList.size;
            ProtobufArrayList mutableCopyWithCapacity = protobufArrayList.mutableCopyWithCapacity(i == 0 ? 10 : i * 2);
            this.children_ = mutableCopyWithCapacity;
            protobufList2 = mutableCopyWithCapacity;
        }
        Charset charset = Internal.UTF_8;
        if (protobufList2 instanceof ArrayList) {
            ((ArrayList) protobufList2).ensureCapacity(arrayList.size() + ((ProtobufArrayList) protobufList2).size);
        }
        ProtobufArrayList protobufArrayList2 = (ProtobufArrayList) protobufList2;
        int i2 = protobufArrayList2.size;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next == null) {
                String str = "Element at index " + (protobufArrayList2.size - i2) + " is null.";
                for (int i3 = protobufArrayList2.size - 1; i3 >= i2; i3--) {
                    protobufArrayList2.remove(i3);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3(str);
                return;
            }
            protobufArrayList2.add(next);
        }
    }

    @Override // androidx.glance.appwidget.protobuf.GeneratedMessageLite
    public final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke) {
        Parser parser;
        switch (LayoutProto$1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new LayoutProto$LayoutNode();
            case 2:
                return new Builder(DEFAULT_INSTANCE);
            case 3:
                return new RawMessageInfo(DEFAULT_INSTANCE, "\u0000\u000b\u0000\u0000\u0001\u000b\u000b\u0000\u0001\u0000\u0001\f\u0002\f\u0003\f\u0004\f\u0005\f\u0006\f\u0007\u001b\b\f\t\u0007\n\u0007\u000b\u0007", new Object[]{"type_", "width_", "height_", "horizontalAlignment_", "verticalAlignment_", "imageScale_", "children_", LayoutProto$LayoutNode.class, "identity_", "hasAction_", "hasImageDescription_", "hasImageColorFilter_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser parser2 = PARSER;
                if (parser2 != null) {
                    return parser2;
                }
                synchronized (LayoutProto$LayoutNode.class) {
                    try {
                        parser = PARSER;
                        if (parser == null) {
                            parser = new GeneratedMessageLite.DefaultInstanceBasedParser();
                            PARSER = parser;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return parser;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final void setHasAction(boolean z) {
        this.hasAction_ = z;
    }

    public final void setHasImageColorFilter(boolean z) {
        this.hasImageColorFilter_ = z;
    }

    public final void setHasImageDescription(boolean z) {
        this.hasImageDescription_ = z;
    }

    public final void setHeight(LayoutProto$DimensionType layoutProto$DimensionType) {
        this.height_ = layoutProto$DimensionType.getNumber();
    }

    public final void setHorizontalAlignment$1(LayoutProto$HorizontalAlignment layoutProto$HorizontalAlignment) {
        this.horizontalAlignment_ = layoutProto$HorizontalAlignment.getNumber();
    }

    public final void setIdentity(LayoutProto$NodeIdentity layoutProto$NodeIdentity) {
        this.identity_ = layoutProto$NodeIdentity.getNumber();
    }

    public final void setImageScale(LayoutProto$ContentScale layoutProto$ContentScale) {
        this.imageScale_ = layoutProto$ContentScale.getNumber();
    }

    public final void setType(LayoutProto$LayoutType layoutProto$LayoutType) {
        this.type_ = layoutProto$LayoutType.getNumber();
    }

    public final void setVerticalAlignment$1(LayoutProto$VerticalAlignment layoutProto$VerticalAlignment) {
        this.verticalAlignment_ = layoutProto$VerticalAlignment.getNumber();
    }

    public final void setWidth(LayoutProto$DimensionType layoutProto$DimensionType) {
        this.width_ = layoutProto$DimensionType.getNumber();
    }
}
