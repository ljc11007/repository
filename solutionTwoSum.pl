#!/usr/bin/perl -w
use utf8;
use strict;
sub solution{
     (my $nums_ref,my $target) = @_;
    my @nums = @$nums_ref;  #解除引用，将引用值还原成数组对象
    my %hash ;
    for(my $i=0;$i<scalar(@nums);$i++){ #scalar函数，返回自身的最大长度
        if (exists($hash{$target - $nums[$i]})) { 
            return ($hash{$target-$nums[$i]},$i);
        }else{
            $hash{$nums[$i]} = $i;
        }
    }
    return "error\n";
}

our @nums = (2,9,11,15);
our $target = 11;
our @result = solution(\@nums,$target); #传入数组的引用值
print "@result\n";
